FROM python:3.11-slim

# Ishchi katalogni /app qiling (sodda bo'lishi uchun)
WORKDIR /app

# Kutubxonalarni o'rnatish
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Hamma fayllarni ko'chirish
COPY . .

# Ishga tushirish buyrug'i
CMD ["python", "app.py"]