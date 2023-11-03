import tensorflow as tf
from tensorflow.keras.models import Sequential
from tensorflow.keras.layers import Dense

# Creating a simple neural network model
model = Sequential([
    Dense(64, activation='relu', input_shape=(10,)),
    Dense(32, activation='relu'),
    Dense(1, activation='sigmoid')
])

# Compiling the model
model.compile(optimizer='adam', loss='binary_crossentropy', metrics=['accuracy'])

# Generating random input data for demonstration
import numpy as np
X_train = np.random.random((1000, 10))
y_train = np.random.randint(2, size=(1000, 1))

# Training the model
model.fit(X_train, y_train, epochs=10, batch_size=32)

# Making predictions using the trained model
X_new = np.random.random((5, 10))
predictions = model.predict(X_new)

print("Predictions:", predictions)
