FROM python:3.11-slim

# Python kesh (.pyc) fayllari yozilishini taqiqlash (Kesh muammosini oldini oladi)
ENV PYTHONDONTWRITEBYTECODE=1
# Loglarni terminalda darhol ko'rsatish uchun
ENV PYTHONUNBUFFERED=1

WORKDIR /app

# Kutubxonalarni o'rnatish (Bu qism keshlanadi, tez ishlashi uchun)
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Hamma fayllarni ko'chirish
COPY . .

# Ishga tushirish
CMD ["python", "app.py"]