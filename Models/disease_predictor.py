import tensorflow as tf
from tensorflow.keras.preprocessing import image
from silence_tensorflow import silence_tensorflow
import warnings
warnings.filterwarnings("ignore", category=DeprecationWarning)
warnings.filterwarnings("ignore", category=FutureWarning)
silence_tensorflow()
import numpy as np

categories = ['Apple Scab', 'Apple black rot', 'Cedar apple rust', 'Healthy Apple', 'Healthy Blueberry', 'Cherry healthy', 'Cherry Powdery Mildew', 'Cercospora Leaf Spot'
             , 'Corn common rust', 'Healthy corn', 'Corn Northern leaf blight', 'Grape black rot', 'Grape Black measles', 'Healthy Grape', 'Grape leaf blight', 'Orange Huanglong bing'
             , 'Peach bacterial spot', 'Healthy Peach', 'Bell Pepper bacterial spot', 'Bell pepper healthy', 'Potato Early blight', 'Potato healthy blight', 'Potato late blight'
             , 'Healthy Raspberry', 'Healthy Soyabean', 'Squash powdery mildew', 'Healthy Strawberry', 'Strawberry leaf scotch', 'Tomato bacterial spot', 'Tomato early blight', 'Healthy Tomato'
             , 'Tomato late blight', 'Tomato leaf mold', 'Tomato septoria leaf spot', 'Tomato two spotted spider mite', 'Tomato target spot', 'Tomato mosiac virus', 'Tomato yellow leaf curl virus']

imagepath = 'Models/Plant Diseases Dataset/test/CornCommonRust4.JPG'

classifier = tf.keras.models.load_model('Models/trained_model_mobilenet.h5')

testing = image.load_img(imagepath, target_size = (224, 224))
testing = image.img_to_array(testing)
testing = np.expand_dims(testing, axis=0)
result = classifier.predict(testing)
result = np.argmax(result)

print(categories[result])