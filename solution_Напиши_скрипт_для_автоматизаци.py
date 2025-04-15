import os
import shutil
from datetime import datetime

# Указываем путь к папке с важными файлами
source_dir = '/path/to/important/files'

# Указываем путь к папке для резервных копий
backup_dir = '/path/to/backup/folder'

# Получаем текущую дату для имени подпапки
current_date = datetime.now().strftime("%Y-%m-%d")

# Создаем полный путь к новой подпапке с текущей датой
new_backup_dir = os.path.join(backup_dir, current_date)

# Создаем новую подпапку, если она еще не существует
if not os.path.exists(new_backup_dir):
    os.makedirs(new_backup_dir)

# Проходим по всем файлам в исходной папке
for filename in os.listdir(source_dir):
    # Получаем полный путь к исходному файлу
    file_path = os.path.join(source_dir, filename)
    
    # Проверяем, является ли текущий объект файлом
    if os.path.isfile(file_path):
        # Копируем файл в новую подпапку резервной копии
        shutil.copy2(file_path, new_backup_dir)

print(f"Резервное копирование завершено. Файлы скопированы в: {new_backup_dir}")