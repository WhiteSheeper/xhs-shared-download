# ʹ�ùٷ���Python��������
FROM python:3.8-slim

# ���ù���Ŀ¼
WORKDIR /app

# ����ǰĿ¼�е����ݸ��Ƶ������е� /app Ŀ¼
COPY . /app

# ��װ��Ŀ����������������������� requirements.txt �У�
RUN pip install --no-cache-dir -r requirements.txt

# ��¶�����Ķ˿�
EXPOSE 10010

# ���û���������ȷ�� Flask ����ʱ�����Ե���ģʽ����
ENV FLASK_APP=app.py

# ���� Flask ����
CMD ["python", "app.py"]
