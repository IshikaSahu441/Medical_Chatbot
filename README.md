# Medical Chatbot Using RAG and Gemini

A Flask-based **RAG (Retrieval-Augmented Generation)** chatbot that uses **LangChain**, **Pinecone**, and **Google Generative AI** to answer medical-related queries.  
The bot retrieves relevant context from a Pinecone vector database and generates answers using the Gemini model.

---

## Features
- **Flask Web App** with a simple chat interface, supporting both dark and light modes for better user experience. (`templates/chat.html`) 
- **Pinecone Vector Store** for medical knowledge base
- **Google Gemini 2.0 Flash** model for natural language responses
- **Dockerized** for easy deployment

---

## Tech Stack
- **Backend**: Python 3.10, Flask
- **LLM**: Google Generative AI (Gemini)
- **Vector DB**: Pinecone
- **LangChain**: RAG pipeline
- **Containerization**: Docker

---

## How to run Locally

### 1. Clone the repository
```bash
git clone https://github.com/IshikaSahu441/Medical_Chatbot.git
cd Medical-Chatbot
```

### 2. Create a Conda Virtual Environment
```bash
conda create -n medibot python=3.10 -y
```
```bash
conda activate medibot
```

### 3. Install the Requirements
```bash
pip install -r requirements.txt
```

### 4. Create a .env File 
```bash
PINECONE_API_KEY = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
OPENAI_API_KEY = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
```

### 5. Store embeddings to pinecone
```bash
python store_index.py
```

### 6. Finally run the following command
```bash
python app.py
```

The app will be available at: http://localhost:3000

---

## Run from Docker Hub
### you can pull the pre-built image directly.
```bash
docker pull ishikasahu2504/medical-chatbot
docker run -d \
  -p 3000:3000 \
  --name medical-chatbot \
  -e PINECONE_API_KEY=your_pinecone_key \
  -e GOOGLE_API_KEY=your_google_key \
  ishikasahu2504/medical-chatbot
```

The app will be available at: http://localhost:3000

---

## Web App Preview

<img width="500" height="413" alt="Screenshot 2025-08-15 180445" src="https://github.com/user-attachments/assets/ad7e0825-6bc2-4ed1-93f0-9e2ee9e1c901" />
<img width="500" height="413" alt="Screenshot 2025-08-15 180653" src="https://github.com/user-attachments/assets/5b164278-d937-45a4-8272-33593aaaa944" />




