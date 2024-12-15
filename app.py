import streamlit as st
import pandas as pd
import plotly.express as px

st.title("Car Advertisement Analysis")
st.write("Analyzing the vehicles_us dataset")

df = pd.read_csv("vehicles_us.csv")
st.subheader("Dataset Preview")
st.write(df.head())
