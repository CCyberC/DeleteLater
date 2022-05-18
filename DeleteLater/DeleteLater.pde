/* When mouse is clicked, create a new MovingThread at the mouse position */
void mousePressed() {
    if (mouseInCanvas()) {
        if (DRAW_MODE === 'haystack-mode') {
            threadLine.drawing = true;
            threadLine.x_pos = mouseX;
            threadLine.y_pos = mouseY;
        }
        else if (DRAW_MODE === 'flowy-mode') {
            flowField.drawing = true;
            // place the particles close to the mouse position
            for (let i = 0; i < numParticles; i++) {
                let px = mouseX + random(-1 * PARTICLE_RADIUS, PARTICLE_RADIUS);
                let py = mouseY + random(-1 * PARTICLE_RADIUS, PARTICLE_RADIUS);
                particles[i] = new Particle(px, py);
            }
        }
    }
}
//When mouse is released, destroy the MovingThread
void mouseReleased() {
    if (DRAW_MODE === 'haystack-mode') {
        threadLine.drawing = false;
    }
    else if (DRAW_MODE === 'flowy-mode') {
        flowField.drawing = false;
    }
}
