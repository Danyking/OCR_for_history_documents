# OCR for History Documents

This directory contains the source code of the two models we built
to solve the OCR problem: an SVM model in the "svm.R" file and a CNN
model in the "cnn" folder.

To run the SVM model, load it into RStudio and run it from there. 

Before running the CNN model, make sure
  1. you have the following packages installed in addition to the 
     normal stand scientific libraries: 
       - Keras
       - Theano
       - scikit-learn
  2. you have placed the 'train.csv' and 'test.csv' file in the 'cnn' 
     folder. 

The code is mainly divided into two files:
  - the 'cnn/pyimagesearch/cnn/networks/lenet.py' file defines the 
    structure of the model i.e. the number of layers, pooling sizes etc.
  - the 'cnn/lenet.py' does the rest such as reading training data from disk,
    preprocessing the data, training the model, make predictions, saving results, 
    saving model parameters etc. 

To run the program, navigate to the 'cnn' folder and run either of the following 
commands: 
  - python lenet.py --save-model 1 --weights output/lenet_weights.hdf5
  - python lenet.py --load-model 1 --weights output/lenet_weights.hdf5

For the first time, run the first command. It will train the model, make predictions
and then save the model weights into "output/lenet_weights.hdf5" file. After that, 
if you wish to feed the model with another test set, you can run the second command 
which will load the weights from the specified file. Thus skipping the training 
process. 

The test results will be saved to the 'cnn/result.csv' file. For more details, read
the comments in the program or refer to the reprot that have been submitted. 
