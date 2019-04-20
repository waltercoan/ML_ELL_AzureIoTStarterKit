#define MODEL_WRAPPER_DEFINED
#include <Arduino.h>
#include "model.h"
#include "OledDisplay.h"
const int FEATURIZER_OUTPUT_SIZE = 8;
const int CLASSIFIER_OUTPUT_SIZE = 1;
static float featurizer_output_buffer[FEATURIZER_OUTPUT_SIZE]; 
static float classifier_output_buffer[CLASSIFIER_OUTPUT_SIZE]; // 31 classes
void setup() {
  featurizer_output_buffer[0] = (float)0.058;
  featurizer_output_buffer[1] = (float)0.643;
  featurizer_output_buffer[2] = (float)0.803;
  featurizer_output_buffer[3] = (float)0.414;
  featurizer_output_buffer[4] = (float)0.068;
  featurizer_output_buffer[5] = (float)0.476;
  featurizer_output_buffer[6] = (float)0.530;
  featurizer_output_buffer[7] = (float)0.2;
  model_Reset();
  model_Predict(nullptr, featurizer_output_buffer, classifier_output_buffer);
  Screen.clean();
  Screen.print(0, "Resultado...");
  for (int j = 0; j < CLASSIFIER_OUTPUT_SIZE; j++)
  {
      float v = classifier_output_buffer[j];
      char buf[10];
      sprintf(buf, "%f", v);
      Screen.print(1, buf);
  }
}

void loop() {
  // put your main code here, to run repeatedly:

}
