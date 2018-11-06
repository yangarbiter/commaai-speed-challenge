# commaai-speed-challenge

challenge site: https://github.com/commaai/speedchallenge

## Preprocessing

### Split video to frame with ffmpeg
* ./split_vids.sh

### Get the pretrained c3d model
* get the pretrained model, weight and normalization mean from 
  https://github.com/axon-research/c3d-keras
    * sports1M_weights_tf.h5
    * c3d_mean.npy
* port them to python 3 and newer keras api
* fix the weights of the convolution layers


## data split

* training first 18000 frames
* validation last 2040 frames

## c3d 

* ./c3d.ipynb

* with validation error around 5 (RMS)

* During high speed this model would underestimate the true speed
  
  * The video is in 20 fps and pre-trained c3d only looks 16 frames

  * adding RNN could be used to improve this model (need some kind of information
    about the acceleration of the car or the model need to be able to see further
    back in history)


## Hand craft features (Failed)

* ./hand_craft.ipynb

* use the homography to adjacent frames as features and trained a regression
  model to predict the car speed

* end up with validation error around 50 (RMS)
