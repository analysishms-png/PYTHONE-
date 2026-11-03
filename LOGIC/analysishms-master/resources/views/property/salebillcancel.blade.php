<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Restaurant Menu with Slow-Moving Cancel Animation</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .table-container {
            position: relative;
        }

        .cancel-animation {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            pointer-events: none;
            overflow: hidden;
            display: none;
        }

        .cancel-text {
            position: absolute;
            font-size: 48px;
            color: rgba(255, 0, 0, 0.7);
            white-space: nowrap;
            transform: rotate(-45deg);
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
            transition: all 0.3s ease;
        }

        #animationButton {
            position: absolute;
            top: 10px;
            right: 10px;
            z-index: 1001;
        }
    </style>
</head>

<body>
    <div class="container mt-5">
        <div class="table-container">
            <div class="cancel-animation" id="cancelAnimation"></div>
            <button id="animationButton" class="btn btn-danger">Start Cancel Animation</button>
            <h1 class="mb-4">Restaurant Menu</h1>
            <table class="table table-striped table-hover">
                <thead>
                    <tr>
                        <th>Item</th>
                        <th>Description</th>
                        <th>Price</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Margherita Pizza</td>
                        <td>Classic pizza with tomato sauce, mozzarella, and basil</td>
                        <td>$12.99</td>
                    </tr>
                    <tr>
                        <td>Caesar Salad</td>
                        <td>Romaine lettuce, croutons, parmesan cheese, and Caesar dressing</td>
                        <td>$8.99</td>
                    </tr>
                    <tr>
                        <td>Spaghetti Carbonara</td>
                        <td>Pasta with eggs, cheese, pancetta, and black pepper</td>
                        <td>$14.99</td>
                    </tr>
                    <tr>
                        <td>Grilled Salmon</td>
                        <td>Fresh salmon fillet with lemon butter sauce and vegetables</td>
                        <td>$18.99</td>
                    </tr>
                    <tr>
                        <td>Chocolate Lava Cake</td>
                        <td>Warm chocolate cake with a molten chocolate center</td>
                        <td>$7.99</td>
                    </tr>
                </tbody>
                <tfoot>
                    <tr>
                        <td colspan="3">All prices include tax</td>
                    </tr>
                </tfoot>
            </table>
        </div>
    </div>

    <script>
        let animationRunning = false;
        const animationButton = document.getElementById('animationButton');
        const cancelAnimation = document.getElementById('cancelAnimation');

        function createCancelText() {
            const cancelText = document.createElement('div');
            cancelText.className = 'cancel-text';
            cancelText.textContent = 'Cancel';
            return cancelText;
        }

        function animateCancelText() {
            const containerWidth = cancelAnimation.offsetWidth;
            const containerHeight = cancelAnimation.offsetHeight;

            cancelAnimation.innerHTML = '';
            for (let i = 0; i < 10; i++) {
                const text = createCancelText();
                text.style.left = `${Math.random() * containerWidth}px`;
                text.style.top = `${Math.random() * containerHeight}px`;
                text.dataset.speedX = Math.random() * 0.2 - 0.1; // Speed between -0.1 and 0.1
                text.dataset.speedY = Math.random() * 0.2 - 0.1; // Speed between -0.1 and 0.1
                cancelAnimation.appendChild(text);
            }

            function animate() {
                if (!animationRunning) return;

                const texts = cancelAnimation.getElementsByClassName('cancel-text');
                for (let text of texts) {
                    let left = parseFloat(text.style.left);
                    let top = parseFloat(text.style.top);
                    let speedX = parseFloat(text.dataset.speedX);
                    let speedY = parseFloat(text.dataset.speedY);

                    left += speedX;
                    top += speedY;

                    // Bounce off the edges
                    if (left < 0 || left > containerWidth - text.offsetWidth) {
                        speedX *= -1;
                        text.dataset.speedX = speedX;
                    }
                    if (top < 0 || top > containerHeight - text.offsetHeight) {
                        speedY *= -1;
                        text.dataset.speedY = speedY;
                    }

                    text.style.left = `${left}px`;
                    text.style.top = `${top}px`;

                    // Subtle rotation and scaling
                    text.style.transform = `rotate(${-45 + Math.sin(Date.now() / 5000) * 5}deg) scale(${0.95 + Math.sin(Date.now() / 3000) * 0.05})`;
                }

                requestAnimationFrame(animate);
            }

            animate();
        }

        animationButton.addEventListener('click', () => {
            if (animationRunning) {
                animationRunning = false;
                cancelAnimation.style.display = 'none';
                animationButton.textContent = 'Start Cancel Animation';
                animationButton.classList.remove('btn-success');
                animationButton.classList.add('btn-danger');
            } else {
                animationRunning = true;
                cancelAnimation.style.display = 'block';
                animateCancelText();
                animationButton.textContent = 'Stop Cancel Animation';
                animationButton.classList.remove('btn-danger');
                animationButton.classList.add('btn-success');
            }
        });
    </script>
</body>

</html>
