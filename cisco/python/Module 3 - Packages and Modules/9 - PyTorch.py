import torch
import torch.nn as nn
import torch.optim as optim

# Creating a simple neural network model
class SimpleModel(nn.Module):
    def __init__(self):
        super(SimpleModel, self).__init__()
        self.fc1 = nn.Linear(10, 64)
        self.fc2 = nn.Linear(64, 32)
        self.fc3 = nn.Linear(32, 1)
        self.relu = nn.ReLU()
        self.sigmoid = nn.Sigmoid()

    def forward(self, x):
        x = self.relu(self.fc1(x))
        x = self.relu(self.fc2(x))
        x = self.sigmoid(self.fc3(x))
        return x

# Creating an instance of the model
model = SimpleModel()

# Defining loss and optimizer
criterion = nn.BCELoss()  # Binary Cross-Entropy loss
optimizer = optim.Adam(model.parameters(), lr=0.001)

# Generating random input data for demonstration
import numpy as np
X_train = torch.FloatTensor(np.random.random((1000, 10)))
y_train = torch.FloatTensor(np.random.randint(2, size=(1000, 1)))

# Training the model
for epoch in range(10):
    optimizer.zero_grad()
    outputs = model(X_train)
    loss = criterion(outputs, y_train)
    loss.backward()
    optimizer.step()

# Making predictions using the trained model
X_new = torch.FloatTensor(np.random.random((5, 10)))
predictions = model(X_new)

print("Predictions:", predictions)
