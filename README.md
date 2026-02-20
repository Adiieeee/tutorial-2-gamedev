# Pertanyaan yang perlu dijawab
### 1. Apa saja pesan log yang dicetak pada panel output?
- Ketika pesawat menyentuh batas atas permainan muncul tulisan di log "Reached objective!"

### 2. Coba gerakkan landasan ke batas area bawah, lalu gerakkan kembali ke atas hingga hampir menyentuh batas atas. Apa saja pesan log yang dicetak pada panel Output?
- Saat pesawatnya menyentuh batas bawah tidak ada pesan apapun dan saat menyentuh batas atas muncul lagi log "Reached objective!"

### 3. Buka scene MainLevel dengan tampilan workspace 2D. Apakah lokasi scene ObjectiveArea memiliki kaitan dengan pesan log yang dicetak pada panel Output pada percobaan sebelumnya?
- Iya karena scene ObjectiveArea memiliki child yang bernama CollisionShape2 yag terletak di ujung atas, dimana ketika pesawat mengenaik CollisionShape2 ini maka kondisi script di ObjectiveArea.gd menjadi true yang mencetak log "Reached objective!"

### 4. Scene BlueShip dan StonePlatform sama-sama memiliki sebuah child node bertipe Sprite2D. Apa fungsi dari node bertipe Sprite2D?
- Fungsi Sprite2D adalah sebagai gambar assetnya

### 5. Root node dari scene BlueShip dan StonePlatform menggunakan tipe yang berbeda. BlueShip menggunakan tipe RigidBody2D, sedangkan StonePlatform menggunakan tipe StaticBody2D. Apa perbedaan dari masing-masing tipe node?
- BlueShip menggunakan node RigidBody2D yang artinya BlueShip ini akan terpengaruh hal-hal seperti gravitasi, velocity dan hal fisika lainnya. Sementara StonePlatform menggunakan node StaticBody2D yang tidak terpengaruh akan hal seperti gravitasi dan velocity, cocok untuk menjadi bangunan atau platform (sesuai namanya)

### 6. Ubah nilai atribut Mass pada tipe RigidBody2D secara bebas di scene BlueShip, lalu coba jalankan scene MainLevel. Apa yang terjadi?
- Tidak ada perubahan, saya mencoba mass 0.1, 1, 20 dan 1000 kg tapi pergerakan spaceshipnya tetap sama saja

### 7. Ubah nilai atribut Disabled milik node CollisionShape2D pada scene StonePlatform, lalu coba jalankan scene MainLevel. Apa yang terjadi?
- SpaceShipnya langsung terjun bebas melewati StonePlatform, menurut saya itu karena ketika attribute disabled diaktifkan pada CollisionShape2D maka collisionnya akan dissabled pesawatnya tidak akan berinteraksi dengan platformnya

### 8. Pada scene MainLevel, coba manipulasi atribut Position, Rotation, dan Scale milik node BlueShip secara bebas. Apa yang terjadi pada visualisasi BlueShip di Viewport?
- Ketika memanipulasi atribut position maka posisi BlueShipnya berubah sesuai koordinat yang saya masukan. Ketika saya mengubah atribut Rotation maka arah putaran BlueShipnya berubah, msial ketika 0 derajat akan lurus keatas dan misal 180 derajat akan mengahadap kebawah. Untuk Scale tidak terjadi apa-apa saya saat saya ubah di MainLevel tapi ketika saya ke BlueShip.tscn dan mengubah attribute scale di node Sprite2D baru ukuran gambarnya berubah dan ketika mengubah scale CollisionShape baru collision shapenya juga berubah

### 9. Pada scene MainLevel, perhatikan nilai atribut Position node PlatformBlue, StonePlatform, dan StonePlatform2. Mengapa nilai Position node StonePlatform dan StonePlatform2 tidak sesuai dengan posisinya di dalam scene (menurut Inspector) namun visualisasinya berada di posisi yang tepat?
- Nilai atribut Position di Inspector menunjukkan posisi lokal yang dihitung dari titik pusat parentnya si PlatformBlue, bukan dari sudut scene keseluruhan