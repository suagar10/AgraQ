from __future__ import division, print_function
import sys
import os
import glob
import re
import numpy as np
import tensorflow as tf
from tensorflow.keras.preprocessing import image
from flask import Flask, redirect, url_for, request, jsonify
from gevent.pywsgi import WSGIServer
from werkzeug.utils import secure_filename

# Define a flask app
app = Flask(__name__)

MODEL_PATH = 'Models/trained_model_mobilenet.h5'

model = tf.keras.models.load_model(MODEL_PATH)
print('Model loaded. Check http://127.0.0.1:5000/')

def model_predict(img_path, model):
    img = image.load_img(img_path, target_size=(224, 224))

    # Preprocessing the image
    x = image.img_to_array(img)
    x = np.expand_dims(x, axis=0)

    categories = ['Apple Scab', 'Apple black rot', 'Cedar apple rust', 'Healthy Apple', 'Healthy Blueberry', 'Cherry healthy', 'Cherry Powdery Mildew', 'Cercospora Leaf Spot'
                 , 'Corn common rust', 'Healthy corn', 'Corn Northern leaf blight', 'Grape black rot', 'Grape Black measles', 'Healthy Grape', 'Grape leaf blight', 'Orange Huanglong bing'
                 , 'Peach bacterial spot', 'Healthy Peach', 'Bell Pepper bacterial spot', 'Bell pepper healthy', 'Potato Early blight', 'Potato healthy blight', 'Potato late blight'
                 , 'Healthy Raspberry', 'Healthy Soyabean', 'Squash powdery mildew', 'Healthy Strawberry', 'Strawberry leaf scotch', 'Tomato bacterial spot', 'Tomato early blight', 'Healthy Tomato'
                 , 'Tomato late blight', 'Tomato leaf mold', 'Tomato septoria leaf spot', 'Tomato two spotted spider mite', 'Tomato target spot', 'Tomato mosiac virus', 'Tomato yellow leaf curl virus']

    preds = model.predict(x)
    result = np.argmax(preds)
    preds = categories[result]
    return preds

@app.route('/', methods=['GET'])
def index():
    # Main page
    return None


@app.route('/predict', methods=['GET', 'POST'])
def upload():
    if request.method == 'POST':
        # Get the file from post request
        f = request.files['file']

        # Save the file to ./uploads
        basepath = os.path.dirname(__file__)
        file_path = os.path.join(
            basepath, 'uploads', secure_filename(f.filename))
        f.save(file_path)

        # Make prediction
        result = model_predict(file_path, model)

        return jsonify({'result' : result})
    return None


if __name__ == '__main__':
    app.run()