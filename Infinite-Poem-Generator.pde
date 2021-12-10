/***************************
 Infinite Poem Generator
****************************/
 
 
//Define static variables  
PFont f;
String[] Words; // Middle words
String   Type;

StringList Noun;
StringList Plural; 
StringList Noun_phrase; 
StringList Verb_participle; 
StringList Verb_transitive; 
StringList Verb_intransitive;
StringList Adjective;
StringList Adverb;
StringList Conjunction;
StringList Preposition;
StringList Interjection;
StringList Pronoun;
StringList Definite_article;
StringList Indefinite_article;
StringList Nominative;

int N;
int p;
int h;
int V;
int t;
int i;
int A;
int v;
int C;
int P;
int E; //! - Interjection
int r;
int D;
int I;
int o;


/***************************
 Load database
****************************/
void setup() {
  Noun               = new StringList();
  Plural             = new StringList(); 
  Noun_phrase        = new StringList(); 
  Verb_participle    = new StringList(); 
  Verb_transitive    = new StringList(); 
  Verb_intransitive  = new StringList();
  Adjective          = new StringList();
  Adverb             = new StringList();
  Conjunction        = new StringList();
  Preposition        = new StringList();
  Interjection       = new StringList();
  Pronoun            = new StringList();
  Definite_article   = new StringList();
  Indefinite_article = new StringList();
  Nominative         = new StringList();
  String[] Words_i   = loadStrings("mobyposi.txt");
  
  for (int k = 0; k < Words_i.length; k++){
    Words = splitTokens(Words_i[k],"�");
    
    if (Words.length <=2){ 
      Type  = Words[1];
     
      switch(Type.charAt(0)){
        case 'N':
          Noun.append(Words[0]);
          break;
        case 'p':
          Plural.append(Words[0]);
          break;
        case 'h':
          Noun_phrase.append(Words[0]);
          break;
        case 'V':
          Verb_participle.append(Words[0]);
          break;
        case 't':
          Verb_transitive.append(Words[0]);
          break;
        case 'i':
          Verb_intransitive.append(Words[0]);
          break;
        case 'A':
          Adjective.append(Words[0]);
          break;
        case 'v': 
          Adverb.append(Words[0]);
          break;
        case 'C':    
          Conjunction.append(Words[0]);
          break;
        case 'P':  
          Preposition.append(Words[0]);
          break;
        case '!': 
          Interjection.append(Words[0]);
          break;
        case 'r':
          Pronoun.append(Words[0]);
          break;
        case 'D':
          Definite_article.append(Words[0]);
          break;
        case 'I':
          Indefinite_article.append(Words[0]);
          break;
        case 'o':  
          Nominative.append(Words[0]);    
          break;
  }
 }
}

// Create image
  size(640, 360);
  
  // Create the font
  f = createFont("Helvetica", 14);
  textFont(f);
}

void draw() {
  background(0);
  textAlign(RIGHT);
  drawType(width * 0.85);
}

/***************************
 Generate new poem every five seconds
****************************/
void drawType(float x) { 
  gen_num();  
  text(Pronoun.get(r) + " " + Adverb.get(v) + " " + Verb_transitive.get(t) + " " + Preposition.get(P) + " " + Adjective.get(A) + " " + Noun.get(N) + ".", x, 95); fill(130);
  gen_num();
  text(Pronoun.get(r) + " " + Adverb.get(v) + " " + Verb_transitive.get(t) + " " + Preposition.get(P) + " " + Adjective.get(A) + " " + Noun.get(N) + ".", x, 130); fill(204);
  gen_num();
  text(Pronoun.get(r) + " " + Verb_participle.get(V) + " " + Adjective.get(A) + ".", x, 165); fill(204);
  //text("san", x, 165); fill(255);
  //text("shi", x, 210);
  
  delay(20000);
}

void gen_num(){
  N = int(random(Noun.size()));
  p = int(random(Plural.size()));
  h = int(random(Noun_phrase.size()));
  V = int(random(Verb_participle.size()));
  t = int(random(Verb_transitive.size()));
  i = int(random(Verb_intransitive.size()));
  A = int(random(Adjective.size()));
  v = int(random(Adverb.size()));
  C = int(random(Conjunction.size()));
  P = int(random(Preposition.size()));
  E = int(random(Interjection.size()));
  r = int(random(Pronoun.size()));  
  D = int(random(Definite_article.size()));
  I = int(random(Indefinite_article.size()));
  o = int(random(Nominative.size())); 
}

//final String drivingMe = "Hié◊";
//final int[] medicine = int( drivingMe.toCharArray() );

//println(medicine);
//println(char(medicine[9674]));  
