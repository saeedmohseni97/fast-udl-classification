# 🚀 Fast UDL Classification

![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)
![MATLAB](https://img.shields.io/badge/MATLAB-R2018b+-orange.svg)
![DOI](https://img.shields.io/badge/DOI-10.1016%2Fj.sigpro.2023.109124-blue)

MATLAB implementation of the method proposed in the paper:

> **A Fast Dictionary-Learning-Based Classification Scheme Using Undercomplete Dictionaries**  
> *Saeed Mohseni-Sehdeh, Massoud Babaie-Zadeh*  
> Published in *Signal Processing, Vol. 212, 2023*  
> [https://doi.org/10.1016/j.sigpro.2023.109124](https://doi.org/10.1016/j.sigpro.2023.109124)

---

## 🧠 Overview

This repository contains the code for a novel classification algorithm based on **undercomplete dictionary learning (UDL)**.  
Unlike conventional sparse methods using overcomplete dictionaries, this method:

- Learns **one undercomplete dictionary per class** using SVD and gradient projection
- Classifies by **minimum reconstruction error**
- Achieves **high accuracy** with **low computational cost**

---

## 📁 Dataset

The dataset is a **preprocessed MNIST** dataset:

- Training and testing images and their corresponding labels are saved in their own `.mat` file
- Each image is flattened into a vector
- Files can be loaded directly in MATLAB or Python

📦 [Download dataset on Figshare]([https://doi.org/...](https://figshare.com/articles/dataset/Dataset_for_A_fast_dictionary-learning-based_classification_scheme_using_undercomplete_dictionaries_/29367389))

Place downloaded `.mat` files in the `MNIST_Dataset/` directory.

---

## 🔧 Requirements

- MATLAB R2018b or newer
- No extra toolboxes needed

---

## ▶️ Running the Code

To run training and evaluation on MNIST:

```matlab
main.m   % Main entry point
