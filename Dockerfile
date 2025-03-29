FROM python:3.9 
# Or any preferred Python version.
EXPOSE 5000
ADD app.py .
RUN wget https://huggingface.co/TheBloke/Llama-2-7B-Chat-GGUF/resolve/main/llama-2-7b-chat.Q4_K_M.gguf
RUN pip install requests python-dotenv flask flask-cors langchain llama-cpp-python wikipedia-api langchain_community wikipedia
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0" "--port=5000"]
# Or enter the name of your unique directory and parameter set.
