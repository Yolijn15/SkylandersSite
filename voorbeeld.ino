/**************************************************************************/
/*! 
    This example will attempt to connect to an ISO14443A
    card or tag and retrieve some basic information about it
    that can be used to determine what type of card it is.   
   
    Note that you need the baud rate to be 115200 because we need to print
    out the data and read from the card at the same time!

    To enable debug message, define DEBUG in PN532/PN532_debug.h
    
*/
/**************************************************************************/





  #include <Wire.h>
  #include <PN532_I2C.h>
  #include <PN532.h>
  #include <NfcAdapter.h>

  String skylanderCode = "";
  String prevSkylanderCode = "";
  
  PN532_I2C pn532i2c(Wire);
  PN532 nfc(pn532i2c);
  
void setup(void) {
  Serial.begin(115200);
  Serial.println("Hello!");

  nfc.begin();

  uint32_t versiondata = nfc.getFirmwareVersion();
  if (! versiondata) {
    Serial.print("Didn't find PN53x board");
    while (1); // halt
  }
  
  // Got ok data, print it out!
  Serial.print("Found chip PN5"); Serial.println((versiondata>>24) & 0xFF, HEX); 
  Serial.print("Firmware ver. "); Serial.print((versiondata>>16) & 0xFF, DEC); 
  Serial.print('.'); Serial.println((versiondata>>8) & 0xFF, DEC);
  
  // Set the max number of retry attempts to read from a card
  // This prevents us from waiting forever for a card, which is
  // the default behaviour of the PN532.
  nfc.setPassiveActivationRetries(0xFF);
  
  // configure board to read RFID tags
  nfc.SAMConfig();
    
  Serial.println("Waiting for an ISO14443A card");
}

void loop(void) {
  boolean success;
  uint8_t uid[] = { 0, 0, 0, 0, 0, 0, 0 };  // Buffer to store the returned UID
  uint8_t uidLength;                        // Length of the UID (4 or 7 bytes depending on ISO14443A card type)
  int som;
  
  // Wait for an ISO14443A type cards (Mifare, etc.).  When one is found
  // 'uid' will be populated with the UID, and uidLength will indicate
  // if the uid is 4 bytes (Mifare Classic) or 7 bytes (Mifare Ultralight)
  success = nfc.readPassiveTargetID(PN532_MIFARE_ISO14443A, &uid[0], &uidLength); // if card found succes is true
  
  if (success) {
    
    //debug info
    //Serial.println("Found a card!");
    //Serial.print("UID Length: ");Serial.print(uidLength, DEC);Serial.println(" bytes");
    //Serial.print("UID Value: ");
    
    for (uint8_t i=0; i < uidLength; i++) // herhaal zolang de i array kleiner is als de uid lengte
    {
      skylanderCode.concat(uid[i]); // verandert de uid array in een string
    }
    if (skylanderCode != prevSkylanderCode) //als de skylandercode niet gelijk is aan prevskylander code print nieuwe kaart else
    {
     Serial.println(skylanderCode); //laat alleen zien als de nf reader nieuwe kaart ziet
    }
    else //laat alleen zien als de nf reader nieuwe kaart ziet
    {
      
    }
    prevSkylanderCode = skylanderCode;
    // Wait 1 second before continuing
    delay(1000);
  }
  else
  {
    prevSkylanderCode = ""; //reset the prevSkylanderCode
  }
    skylanderCode = "";  //reset the skylanderCode
}
