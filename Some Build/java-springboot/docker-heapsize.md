```yml
Các tham số này được sử dụng trong Java để điều chỉnh việc phân bổ bộ nhớ heap (bộ nhớ dùng cho ứng dụng Java) cho JVM (Java Virtual Machine). Cụ thể:

-XX:MinRAMPercentage=10:

Cài đặt này chỉ định tỷ lệ phần trăm bộ nhớ hệ thống tối thiểu mà JVM sẽ sử dụng cho heap.
Ví dụ, nếu hệ thống có 8GB RAM, tham số này đảm bảo rằng JVM sẽ sử dụng ít nhất 10% của tổng bộ nhớ hệ thống, tức là 800MB.
-XX:InitialRAMPercentage=20:

Đây là tỷ lệ phần trăm bộ nhớ hệ thống mà JVM sẽ sử dụng cho heap khi bắt đầu.
Ví dụ, nếu hệ thống có 8GB RAM, JVM sẽ bắt đầu với khoảng 20% của bộ nhớ hệ thống, tức là 1.6GB.
-XX:MaxRAMPercentage=75:

Tham số này chỉ định tỷ lệ phần trăm bộ nhớ hệ thống tối đa mà JVM có thể sử dụng cho heap.
Nếu hệ thống có 8GB RAM, JVM sẽ có thể sử dụng tối đa 75% bộ nhớ hệ thống, tức là 6GB.
Tóm lại:
MinRAMPercentage đặt một mức tối thiểu cho bộ nhớ heap mà JVM sẽ sử dụng.
InitialRAMPercentage xác định lượng bộ nhớ heap mà JVM sẽ bắt đầu sử dụng.
MaxRAMPercentage đặt một giới hạn tối đa cho bộ nhớ heap mà JVM có thể sử dụng.

Check: java -XX:+PrintFlagsFinal -version | grep -Ei 'MaxHeapSize|MaxRAMFraction|version'
```
