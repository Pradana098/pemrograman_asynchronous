## W11: Soal 2
![www googleapis com_books_v1_volumes_B1mxDwAAQBAJ - Google Chrome 25_11_2024 08 27 29](https://github.com/user-attachments/assets/3367e433-728a-4b17-99c5-8cbd48cf446f)

## W11: Soal 3

**Jelaskan maksud kode langkah 5 tersebut terkait substring dan catchError!**

1. **`substring(0, 450)`**:
   - Digunakan untuk mengambil **450 karakter pertama** dari respons string (hasil dari `value.body`) agar data yang ditampilkan lebih ringkas.
   - **Risiko:** Jika panjang string kurang dari 450 karakter, akan terjadi **`RangeError`**, sehingga harus dipastikan string cukup panjang sebelum memotongnya.

2. **`catchError`**:
   - Berfungsi untuk **menangani error** yang mungkin terjadi selama proses pengambilan data (seperti koneksi gagal atau error lainnya).
   - Jika error terjadi, akan menampilkan pesan `'An error occurred'` sebagai respons default, sehingga aplikasi tetap stabil dan tidak crash.

3. **Fungsi Keduanya:**
   - **`substring`** digunakan untuk memanipulasi hasil respons agar lebih ringkas.
   - **`catchError`** memastikan aplikasi tetap berjalan meskipun terjadi kesalahan selama proses.

![Flutter Demo - Google Chrome 25_11_2024 08 36 03](https://github.com/user-attachments/assets/869bc088-dbcd-4a4b-a91f-5d9f1dd30478)

## W11: Soal 4

**Jelaskan maksud kode langkah 1 dan 2 tersebut!**

Fungsi ini menjumlahkan hasil dari tiga operasi asinkron secara berurutan, dengan total waktu eksekusi 9 detik. Hasilnya diperbarui ke UI menggunakan `setState`, dan akhirnya variabel `result` akan berisi string `"6"`.

![Flutter Demo - Google Chrome 25_11_2024 08 58 01](https://github.com/user-attachments/assets/f2af386b-9727-435b-8eba-6e8b9273e34e)

## W11: Soal 5

**Jelaskan maksud kode langkah 2 tersebut!**

Fungsi getNumber() mengembalikan sebuah Future yang akhirnya menyelesaikan dengan nilai 42, yang didapat setelah 5 detik proses yang dilakukan oleh calculate(). Completer digunakan untuk menandakan bahwa nilai tersebut akan diselesaikan di masa depan setelah operasi asinkron selesai.

![Flutter Demo - Google Chrome 25_11_2024 09 23 01](https://github.com/user-attachments/assets/163af630-8b53-4433-bffe-134e84786c03)

## w1: Soal 6
**Kode 2:** Tidak ada penanganan error, dan aplikasi mungkin tidak memberikan feedback jika terjadi masalah.

**Kode 5-6:** Menambahkan penanganan error menggunakan try-catch dan completer.completeError(), memungkinkan aplikasi untuk memberikan feedback jika terjadi kesalahan dalam operasi asinkron.

![Flutter Demo - Google Chrome 04_12_2024 08 35 19](https://github.com/user-attachments/assets/36f45731-bac4-4b8f-8928-46cb8fb96984)

## W11: Soal 7

https://github.com/user-attachments/assets/47e420cb-65b6-4444-82bd-779f48f1ff08


## W11: Soal 9

![Flutter Demo - Google Chrome 25_11_2024 09 57 29](https://github.com/user-attachments/assets/e24848c3-bed9-4c60-b024-45f6bc1eeea1)

![main dart - pemrograman_asynchronous - Visual Studio Code 25_11_2024 09 57 53](https://github.com/user-attachments/assets/bfa20746-9874-489c-90a1-546a8dcf7c3d)

## W11: Soal 10
https://github.com/user-attachments/assets/fde95cb6-37c1-4d69-84df-4e90534006d2

**returnError()** hanya melempar error tanpa penanganan.

**handleError()** menangani error yang dilemparkan oleh returnError(), memperbarui UI dengan error tersebut, dan menjalankan bagian tertentu (finally) setelah proses selesai.

## W11: Soal 12

![WhatsApp Image 2024-12-04 at 09 33 18_ad1a6188](https://github.com/user-attachments/assets/bb7388a5-5672-4028-862d-7f46d9c98036)

![Flutter Demo - Google Chrome 25_11_2024 10 31 55](https://github.com/user-attachments/assets/7888f3fc-b88c-43b7-994c-e226a2660199)

## W11: Soal 13

https://github.com/user-attachments/assets/b5ac95b7-125f-477e-ba60-fa432cc3e2b0

Pada ui tidak ada yang berubah tapi pada saat saya memblokir lokasinya muncul text null

## W11: Soal 14
![Flutter Demo - Google Chrome 04_12_2024 10 03 07](https://github.com/user-attachments/assets/a99c7f57-83a9-4484-b223-512734110c14)

perubahan dari null menjadi Something terrible happened!

## W11: Soal 16
![Flutter Demo - Google Chrome 04_12_2024 07 50 27](https://github.com/user-attachments/assets/0fa7c286-98cc-4dec-9324-431a1df39dd1)
![Flutter Demo - Google Chrome 04_12_2024 07 50 21](https://github.com/user-attachments/assets/55d4f122-da30-4fe4-91b1-f71511b2d1a9)
![Flutter Demo - Google Chrome 04_12_2024 07 50 15](https://github.com/user-attachments/assets/21df4f36-b0ea-4548-94e7-55452847f4a5)
![Flutter Demo - Google Chrome 04_12_2024 07 50 10](https://github.com/user-attachments/assets/d95315d5-b0d7-4343-b8c7-569066014738)

## W11: Soal 17
![Flutter Demo - Google Chrome 04_12_2024 08 10 16](https://github.com/user-attachments/assets/d5010d6b-68b9-4e58-94f8-638e3ea22515)







