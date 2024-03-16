import streamlit as st
import openai

# Set OpenAI API key
openai.api_key = "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"

# Function to chat with GPT-3.5
def chat_with_gpt(prompt):
    response = openai.ChatCompletion.create(
        model="gpt-3.5-turbo",
        messages=[{"role": "user", "content": prompt}]
    )
    return response.choices[0].message.content.strip()

# Streamlit app code
st.title('SymptomScan: Disease Prediction Application')
st.write(" ")
st.subheader('Enter your symptomps here:')
user_input = "Act as doctor. Give the disease name of following symptoms. "+st.text_input('Symptoms', ' ')+ " Give answer in one line."

if st.button('Check'):
    response = chat_with_gpt(user_input)
    st.markdown("Disease: "+response)