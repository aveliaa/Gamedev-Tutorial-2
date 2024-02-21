  

# Tutorial 2 Game Development
Avelia Diva Zahra - 2006596176

  

### Jawaban Pertanyaan

- **Apa saja pesan log yang dicetak pada panel Output?** <br>Saat permainan baru dimulai, "Platform Initialized" dicetak. Saat digerakkan ke atas, keluar pesan "Reached Objective"
<br>

- **Coba gerakkan landasan ke batas area bawah, lalu gerakkan kembali ke atas hingga hampir menyentuh batas atas. Apa saja pesan log yang dicetak pada panel Output?**<br>Pesan "Reached Objective" muncul lagi
<br>

- **Buka scene MainLevel dengan tampilan workspace 2D. Apakah lokasi scene ObjectiveArea memiliki kaitan dengan pesan log yang dicetak pada panel Output pada percobaan sebelumnya?**<br>Object-object yang ditempatkan pada main level serta posisinya terlihat merupakan object yang muncul saat playtesting. pergerakan tertentu dari masing-masing object ini mentrigger event yang mengeluarkan output. Event ini terjadi karena `BlueShip` menyentuh `ObjectiveArea` yang memiliki connection ke signal `func_on_ObjectiveArea_body_entered(body: RigidBody2D):`. Disini, diinstruksikan bahwa apabila BlueShip memasuki area Objective Area, "Reached Objective" akan diprint.
<br>

- **_Scene_  `BlueShip`  dan  `StonePlatform`  sama-sama memiliki sebuah  _child node_  bertipe  `Sprite`. Apa fungsi dari  _node_  bertipe  `Sprite`?** <br>`Sprite` merupakan node yang menunjukkan texture 2D yang bisa diatur oleh developer. Secara umum, sprite digunakan sebagai representasi visual objek.
<br>

- **_Root node_  dari  _scene_  `BlueShip`  dan  `StonePlatform`  menggunakan tipe yang berbeda.  `BlueShip`  menggunakan tipe  `RigidBody2D`, sedangkan  `StonePlatform`  menggunakan tipe  `StaticBody2D`. Apa perbedaan dari masing-masing tipe  _node_?**<br> `RigidBody2D` mengimplementasikan physics 2D. Namun, tidak bisa digerakkan langsung. Untuk menggerakkannya, pemain bisa memanfaatkan berbagai dorongan yang tersedia di game (gravitasi, impulse, dll). Sebaliknya, `StaticBody2D` tidak bisa digerakkan dengan dorongan seperti impuls dan gravitasi. Tetapi, bisa digerakkan oleh pemain atau lewat code.
<br>

-   **Ubah nilai atribut  `Mass`  dan  `Weight`  pada tipe  `RigidBody2D`  secara bebas di  _scene_  `BlueShip`, lalu coba jalankan  _scene_  `MainLevel`. Apa yang terjadi?**<br>Secara teoritis, seharusnya semakin besar mass dan weight maka pesawat akan semakin cepat terjatuh. Namun pada saat playtesting, tidak ada pengaruh signifikan yang terjadi.
<br>

-   **Ubah nilai atribut  `Disabled`  pada tipe  `CollisionShape2D`  di  _scene_  `StonePlatform`, lalu coba jalankan  _scene_  `MainLevel`. Apa yang terjadi?**<br>Pesawat terjatuh karena objek platform dan pesawat jadi tidak saling bersentuhan. 
<br>

-   **Pada  _scene_  `MainLevel`, coba manipulasi atribut  `Position`,  `Rotation`, dan  `Scale`  milik  _node_  `BlueShip`  secara bebas. Apa yang terjadi pada visualisasi  `BlueShip`  di Viewport?**<br>rotation memutar blueship, position x dan y mengubah posisi horizontal dan vertikal blueship, scale mengubah ukuran blueship di viewport (namun saat di-playtest tidak berubah)
<br>

-   **Pada  _scene_  `MainLevel`, perhatikan nilai atribut  `Position`  _node_  `PlatformBlue`,  `StonePlatform`, dan  `StonePlatform2`. Mengapa nilai  `Position`  _node_  `StonePlatform`  dan  `StonePlatform2`  tidak sesuai dengan posisinya di dalam  _scene_  (menurut Inspector) namun visualisasinya berada di posisi yang tepat?**<br>Karena nilai posisinya relatif dengan parent nodenya, yaitu PlatformBlue

### Latihan Mandiri: Membuat Level Baru

Silakan baca referensi yang tersedia untuk belajar bagaimana caranya untuk membuat  _node_  dan  _scene_  di Godot. Kemudian silakan berlatih untuk membuat level baru berisi tipe pesawat dan landasan yang berbeda dari level awal. Gunakan aset gambar pesawat dan landasan yang berbeda dari  `BlueShip`  dan  `StonePlatform`  untuk membuat tipe pesawat dan landasan baru.<br><br>

Pada level baru ini, diharapkan kamu dapat membuat:<br>

[x] Objek pesawat baru.<br>
[x] Objek landasan baru.<br>
[x] Desain level yang berbeda dari level awal dengan menempatkan  `ObjectiveArea`  di pojok kanan atas atau pojok kana bawah area permainan di level baru.<br>
[x] Silakan berkreasi jika ingin memoles level awal maupun level baru. Beberapa ide  _polishing_:<br>
-  [x] Implementasi reset kondisi level ketika pesawatnya jatuh ke luar area permainan. [saya membuat game over, ulang ke lv1]<br>
-  [x] Implementasi transisi level awal ke level baru ketika pemain berhasil mencapai  `ObjectiveArea`. Misalnya menampilkan pesan kemenangan sesaat sebelum pindah level. [pesan di tengah berubah]<br>
-  [x] Menambahkan gambar latar.<br>
-  [x] Menambahkan rintangan objek statis pada level baru. [meteor di level 2, level reset saat terkena]<br>
-  [x] Dan lain-lain. Silakan berkreasi! [musik, sound, meteor bergerak, ending scene, maskot, story, dll]<br>

### Keterangan
1. Background image dibuat dengan AI
2. Maskot dimodifikasi, namun bersumber dari flaticon [free]
3. Music dan backsound dari FStudios dan Pixabay [royalty free]
