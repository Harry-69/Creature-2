//Dette skulle være løsningen på "Creature Walk", men der er noget galt!
//
//Opgave 2: Boldens øjne bevæger sig og forstørres forkert. Det skal rettes (svar jeg gik ind på linje 9 og 10 og indrede int til float det virker fordi int er komma tal og du kan ikke sette komma og ikke komma sammen )
//Opgave 3: Bolden hopper ikke op og ned. Det skal fikses (hint: se ballwalk) (svar indrede all første variabler til float så der ikke ville opstå problemer med int der efter frigjor jeg koden ballwalk og indsatte den i ballY koden så bolden ville +10 og -10 hele tiden )
//Opgave 4: Skriv kode-kommentarer, der forklarer dine rettelser og upload til gitHub.
//Opgave 5: Aflever dokument med link på lectio (lectio registrerer ikke en kommentar som aflevering)

float    ballX             = 100 ,  ballY             = 100;
float   eyeLeftRelativeX  = 5   ,  eyeLeftRelativeY  = 5;
float eyeRightRelativeX = 20  ,  eyeRightRelativeY = 5;   
float   speedX            = 1   ,  speedY            = 1;
float ballSize          = 50;
float eyeSize           = 5;
float zoomFactor        = 1.01;

//setup: kører kun en gang ved progam-start
// De to tegn: { } betyder kode scope. Variabler har altid et scope de lever indenfor!
void setup() {  
  size(500, 500);
}

//draw: kører default 30  gange per sekund
void draw() {                         
  float ballwalk =  sin(ballX*0.5)*10;  //svingning på +10 til -10 pixels 
  ballX         =  ballX  +  speedX;    //flytter min bold 
  ballY         =  ballY  + ballwalk + speedY;
  ballSize      =  (ballSize*zoomFactor); //gør mit bold størrere
  eyeSize       =  (eyeSize*zoomFactor);
  eyeRightRelativeX *=zoomFactor;
  eyeRightRelativeY *=zoomFactor;
  eyeLeftRelativeX  *=zoomFactor;
  eyeLeftRelativeY  *=zoomFactor;
  
  clear();
  ellipse(ballX, ballY, ballSize, ballSize);
  ellipse(eyeLeftRelativeX + ballX, eyeLeftRelativeY + ballY, eyeSize,eyeSize);
  ellipse(eyeRightRelativeX + ballX, eyeRightRelativeY + ballY, eyeSize,eyeSize);
}
