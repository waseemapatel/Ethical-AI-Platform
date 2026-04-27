# Ethical AI Platform

A full-stack platform built for the **Google Solutions Challenge 2026 x Hack2Skill** that halts systemic discrimination in hiring, loans, and admissions by making decisions strictly on merit while auditing for human bias.

## Features

1. **Sensitive Data Filtering**: Uses Gemini 1.5 Pro to redact Name, Gender, Race, and other PII.
2. **Proxy Bias Detection**: Flags and ignores hidden indicators (like specific zip codes or hobbies).
3. **Merit-Based Scoring**: `Score = 0.5(Skill) + 0.3(Experience) + 0.2(Qualification)`.
4. **Tie-Break Halting**: If the score difference between candidates is `< 0.01`, the AI safely halts and triggers a Human Decision Stage.
5. **Fairness Audit Dashboard**: Monitors manager tie-break choices to detect reintroduced bias, calculating a `Human Bias Penalty`.

## Technology Stack
- **Frontend**: React, Vite, Tailwind CSS, Recharts
- **Backend**: FastAPI (Python), SQLite, SQLAlchemy
- **AI**: Google Gemini 1.5 Pro via Vertex AI

## How to Run the Project

### 1. Backend Setup (FastAPI)
Navigate to the backend directory and install the Python dependencies.

```bash
cd backend
python -m venv venv
# Activate the virtual environment:
# On Windows: venv\Scripts\activate
# On Mac/Linux: source venv/bin/activate

pip install -r requirements.txt
```

Run the FastAPI server:
```bash
uvicorn main:app --reload --port 8000
```
The API will be running at `http://localhost:8000/api`

### 2. Frontend Setup (React/Vite)
Open a new terminal window, navigate to the frontend directory, and install the Node modules.

```bash
cd frontend
npm install
```

Run the frontend development server:
```bash
npm run dev
```
The application will open in your default browser, typically at `http://localhost:5173`.

### 3. Quick Static Prototype Demo
If you do not want to set up the Node/Python environments right away, you can simply double-click the `demo.html` file located in the root of the project to view a static, fully-functional UI prototype of the platform.
