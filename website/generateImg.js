const imageContainer = document.getElementById('image-container');

for (let i = 0; i < 10; i++) {
    const img = document.createElement('img');
    img.src = `https://picsum.photos/200/300?random=${i}`;
    img.alt = 'Random Image';
    img.classList.add('image');
    imageContainer.appendChild(img);
}
