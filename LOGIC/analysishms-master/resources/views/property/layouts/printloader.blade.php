<style>
    /* Full-screen loader overlay */
    .loader-overlay {
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background-color: rgba(0, 0, 0, 0.5);
        /* Black transparent background */
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
        /* Stack elements vertically */
        z-index: 9999;
        /* Ensure it appears above all other elements */
    }

    .sk-cube-grid {
        width: 40px;
        height: 40px;
        display: flex;
        flex-wrap: wrap;
    }

    .sk-cube-grid .sk-cube {
        width: 33%;
        height: 33%;
        background-color: #fff;
        /* White cubes for better contrast */
        animation: sk-cubeGridScaleDelay 1.3s infinite ease-in-out;
    }

    .sk-cube-grid .sk-cube:nth-child(1) {
        animation-delay: 0.2s;
    }

    .sk-cube-grid .sk-cube:nth-child(2) {
        animation-delay: 0.3s;
    }

    .sk-cube-grid .sk-cube:nth-child(3) {
        animation-delay: 0.4s;
    }

    .sk-cube-grid .sk-cube:nth-child(4) {
        animation-delay: 0.1s;
    }

    .sk-cube-grid .sk-cube:nth-child(5) {
        animation-delay: 0.2s;
    }

    .sk-cube-grid .sk-cube:nth-child(6) {
        animation-delay: 0.3s;
    }

    .sk-cube-grid .sk-cube:nth-child(7) {
        animation-delay: 0s;
    }

    .sk-cube-grid .sk-cube:nth-child(8) {
        animation-delay: 0.1s;
    }

    .sk-cube-grid .sk-cube:nth-child(9) {
        animation-delay: 0.2s;
    }

    @keyframes sk-cubeGridScaleDelay {

        0%,
        70%,
        100% {
            transform: scale3D(1, 1, 1);
        }

        35% {
            transform: scale3D(0, 0, 1);
        }
    }

    .loader-text {
        color: white;
        font-size: 1.2rem;
        margin-top: 10px;
        text-align: center;
    }
</style>

<div class="loader-overlay">
    <div class="sk-cube-grid">
        <div class="sk-cube"></div>
        <div class="sk-cube"></div>
        <div class="sk-cube"></div>
        <div class="sk-cube"></div>
        <div class="sk-cube"></div>
        <div class="sk-cube"></div>
        <div class="sk-cube"></div>
        <div class="sk-cube"></div>
        <div class="sk-cube"></div>
    </div>
    <div class="loader-text">Analysis HMS</div>
</div>


<script>
    function showLoader() {
        $(".loader-overlay").fadeIn();
    }

    function hideLoader() {
        $(".loader-overlay").fadeOut();
    }
</script>
