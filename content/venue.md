---
title: "Sede"
description: "Universidad Abierta para Adultos (UAPA), Santiago de los Caballeros. Conoce cómo llegar a la sede del Containers Day 2026."
layout: "location"
type: "miscellaneous"
---

<style>
.venue-redesign {
font-family: var(--font-body);
color: #e2e8f0;
}
.venue-redesign h1, 
.venue-redesign h2, 
.venue-redesign h3, 
.venue-redesign h4 {
font-family: var(--font-display);
font-weight: 800;
}

/* Glassmorphism Tabs Wrapper */
.v-tabs-wrapper {
position: relative;
display: flex;
justify-content: center;
margin: 2rem auto 3.5rem;
max-width: 650px;
background: rgba(255, 255, 255, 0.02);
border: 1px solid rgba(255, 255, 255, 0.06);
backdrop-filter: blur(12px);
-webkit-backdrop-filter: blur(12px);
padding: 6px;
border-radius: 100px;
box-shadow: 0 8px 32px rgba(0, 0, 0, 0.2);
}
.v-tab-trigger {
position: relative;
flex: 1;
background: none;
border: none;
color: #94a3b8;
padding: 14px 24px;
font-size: 1rem;
font-weight: 700;
cursor: pointer;
transition: all 0.3s cubic-bezier(0.25, 0.8, 0.25, 1);
border-radius: 100px;
z-index: 2;
display: flex;
align-items: center;
justify-content: center;
gap: 8px;
font-family: var(--font-display);
}
.v-tab-trigger:hover {
color: #ffffff;
}
.v-tab-trigger.active {
color: #000000;
background: #38bdf8;
box-shadow: 0 4px 20px rgba(56, 189, 248, 0.4);
}
@media (max-width: 600px) {
.v-tabs-wrapper {
border-radius: 20px;
flex-direction: column;
max-width: 100%;
padding: 10px;
}
.v-tab-trigger {
padding: 12px;
border-radius: 12px;
width: 100%;
}
.v-tab-trigger.active {
box-shadow: 0 4px 15px rgba(56, 189, 248, 0.3);
}
}

/* Tab contents styling */
.v-content-pane {
display: none;
animation: vSlideUp 0.6s cubic-bezier(0.16, 1, 0.3, 1) forwards;
opacity: 0;
transform: translateY(20px);
}
.v-content-pane.active {
display: block;
}

@keyframes vSlideUp {
to {
opacity: 1;
transform: translateY(0);
}
}

/* Travel Section Layout */
.v-travel-grid {
display: grid;
grid-template-columns: 1.1fr 0.9fr;
gap: 2.5rem;
align-items: start;
margin-bottom: 2rem;
}
@media (max-width: 991px) {
.v-travel-grid {
grid-template-columns: 1fr;
gap: 2rem;
}
}

/* Premium Card Architecture */
.v-hero-card {
position: relative;
background: linear-gradient(180deg, rgba(255, 255, 255, 0.04) 0%, rgba(255, 255, 255, 0.01) 100%);
border: 1px solid rgba(255, 255, 255, 0.08);
border-radius: 24px;
overflow: hidden;
box-shadow: var(--shadow-lg);
transition: all 0.4s cubic-bezier(0.16, 1, 0.3, 1);
}
.v-hero-card:hover {
transform: translateY(-5px);
border-color: rgba(56, 189, 248, 0.4);
box-shadow: 0 20px 40px rgba(0, 0, 0, 0.3), 0 0 30px rgba(56, 189, 248, 0.1);
}
.v-card-img-wrap {
position: relative;
width: 100%;
height: 280px;
overflow: hidden;
}
.v-card-img-wrap::after {
content: '';
position: absolute;
bottom: 0;
left: 0;
width: 100%;
height: 50%;
background: linear-gradient(to top, rgba(10, 17, 40, 1) 0%, rgba(10, 17, 40, 0) 100%);
}
.v-card-img {
width: 100%;
height: 100%;
object-fit: cover;
transition: transform 0.6s cubic-bezier(0.16, 1, 0.3, 1);
}
.v-hero-card:hover .v-card-img {
transform: scale(1.06);
}
.v-hero-badge {
position: absolute;
top: 20px;
left: 20px;
background: rgba(10, 17, 40, 0.75);
border: 1px solid rgba(255, 255, 255, 0.2);
backdrop-filter: blur(8px);
color: #fff;
padding: 6px 14px;
border-radius: 100px;
font-size: 0.8rem;
font-weight: 700;
letter-spacing: 0.5px;
text-transform: uppercase;
display: flex;
align-items: center;
gap: 6px;
}
.v-card-body {
padding: 2.2rem;
position: relative;
}
.v-card-title {
font-size: 1.6rem;
color: #ffffff;
margin-bottom: 1rem;
letter-spacing: -0.5px;
}
.v-card-text {
font-size: 0.95rem;
color: #94a3b8;
line-height: 1.7;
margin-bottom: 1.5rem;
}

/* Staggered cards styling */
.v-options-list {
display: flex;
flex-direction: column;
gap: 1.5rem;
}
.v-option-card {
display: flex;
gap: 1.5rem;
background: rgba(255, 255, 255, 0.02);
border: 1px solid rgba(255, 255, 255, 0.05);
padding: 1.8rem;
border-radius: 20px;
transition: all 0.3s ease;
}
.v-option-card:hover {
background: rgba(255, 255, 255, 0.04);
border-color: rgba(56, 189, 248, 0.2);
transform: translateX(5px);
}
.v-option-icon {
flex-shrink: 0;
width: 54px;
height: 54px;
border-radius: 16px;
background: rgba(56, 189, 248, 0.1);
color: #38bdf8;
display: flex;
align-items: center;
justify-content: center;
font-size: 1.4rem;
border: 1px solid rgba(56, 189, 248, 0.2);
box-shadow: 0 4px 15px rgba(56, 189, 248, 0.05);
}
.v-option-info {
flex-grow: 1;
}
.v-option-title {
font-size: 1.15rem;
font-weight: 700;
color: #ffffff;
margin-bottom: 0.3rem;
}
.v-option-meta {
font-size: 0.8rem;
color: #38bdf8;
font-weight: 600;
text-transform: uppercase;
letter-spacing: 0.5px;
margin-bottom: 0.8rem;
display: block;
}
.v-option-desc {
font-size: 0.9rem;
color: #94a3b8;
line-height: 1.6;
margin-bottom: 1rem;
}
.v-link-btn {
display: inline-flex;
align-items: center;
gap: 6px;
color: #38bdf8;
text-decoration: none;
font-weight: 700;
font-size: 0.85rem;
transition: color 0.2s ease;
}
.v-link-btn:hover {
color: #7dd3fc;
}

/* Hotel Grid Layout */
.v-hotel-grid {
display: grid;
grid-template-columns: repeat(auto-fill, minmax(260px, 1fr));
gap: 2rem;
margin-bottom: 2rem;
}
.v-hotel-card {
background: rgba(255, 255, 255, 0.02);
border: 1px solid rgba(255, 255, 255, 0.06);
border-radius: 20px;
overflow: hidden;
display: flex;
flex-direction: column;
transition: all 0.4s cubic-bezier(0.16, 1, 0.3, 1);
height: 100%;
}
.v-hotel-card:hover {
transform: translateY(-8px);
border-color: rgba(56, 189, 248, 0.3);
box-shadow: 0 15px 30px rgba(0, 0, 0, 0.4), 0 0 20px rgba(56, 189, 248, 0.05);
}
.v-hotel-img-wrap {
position: relative;
height: 180px;
overflow: hidden;
}
.v-hotel-img-wrap::after {
content: '';
position: absolute;
bottom: 0;
left: 0;
width: 100%;
height: 40%;
background: linear-gradient(to top, rgba(10, 17, 40, 0.9) 0%, rgba(10, 17, 40, 0) 100%);
}
.v-hotel-img {
width: 100%;
height: 100%;
object-fit: cover;
transition: transform 0.6s cubic-bezier(0.16, 1, 0.3, 1);
}
.v-hotel-card:hover .v-hotel-img {
transform: scale(1.08);
}
.v-hotel-stars {
position: absolute;
top: 15px;
left: 15px;
background: rgba(10, 17, 40, 0.8);
padding: 4px 8px;
border-radius: 8px;
font-size: 0.75rem;
color: #fbbf24;
border: 1px solid rgba(255, 255, 255, 0.1);
backdrop-filter: blur(5px);
}
.v-hotel-body {
padding: 1.5rem;
display: flex;
flex-direction: column;
flex-grow: 1;
justify-content: space-between;
}
.v-hotel-title {
font-size: 1.2rem;
font-weight: 800;
color: #ffffff;
margin-bottom: 0.5rem;
line-height: 1.3;
}
.v-hotel-desc {
font-size: 0.85rem;
color: #94a3b8;
line-height: 1.5;
margin-bottom: 1.2rem;
}
.v-hotel-price {
font-size: 0.9rem;
font-weight: 700;
color: #f59e0b;
margin-bottom: 1.5rem;
display: flex;
align-items: center;
gap: 5px;
}
.v-hotel-price i {
font-size: 0.85rem;
}
.v-action-btn {
display: inline-flex;
align-items: center;
justify-content: center;
gap: 8px;
width: 100%;
background: rgba(255, 255, 255, 0.03);
border: 1px solid rgba(255, 255, 255, 0.15);
color: #ffffff;
padding: 12px;
border-radius: 12px;
font-size: 0.85rem;
font-weight: 700;
text-decoration: none;
transition: all 0.3s ease;
cursor: pointer;
text-transform: uppercase;
letter-spacing: 0.5px;
font-family: var(--font-display);
}
.v-action-btn:hover {
background: #38bdf8;
border-color: #38bdf8;
color: #000000;
box-shadow: 0 4px 15px rgba(56, 189, 248, 0.3);
}

/* Restaurants Grid Layout */
.v-food-grid {
display: grid;
grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
gap: 2rem;
margin-bottom: 2rem;
}
.v-food-card {
background: rgba(255, 255, 255, 0.02);
border: 1px solid rgba(255, 255, 255, 0.06);
border-radius: 24px;
overflow: hidden;
display: flex;
flex-direction: column;
transition: all 0.4s cubic-bezier(0.16, 1, 0.3, 1);
height: 100%;
}
.v-food-card:hover {
transform: translateY(-8px);
border-color: rgba(56, 189, 248, 0.3);
box-shadow: 0 15px 30px rgba(0, 0, 0, 0.4), 0 0 20px rgba(56, 189, 248, 0.05);
}
.v-food-img-wrap {
position: relative;
height: 200px;
overflow: hidden;
}
.v-food-img-wrap::after {
content: '';
position: absolute;
bottom: 0;
left: 0;
width: 100%;
height: 40%;
background: linear-gradient(to top, rgba(10, 17, 40, 0.9) 0%, rgba(10, 17, 40, 0) 100%);
}
.v-food-img {
width: 100%;
height: 100%;
object-fit: cover;
transition: transform 0.6s cubic-bezier(0.16, 1, 0.3, 1);
}
.v-food-card:hover .v-food-img {
transform: scale(1.08);
}
.v-food-badge {
position: absolute;
top: 15px;
left: 15px;
background: rgba(56, 189, 248, 0.15);
padding: 5px 10px;
border-radius: 8px;
font-size: 0.7rem;
font-weight: 700;
color: #38bdf8;
border: 1px solid rgba(56, 189, 248, 0.3);
backdrop-filter: blur(5px);
text-transform: uppercase;
letter-spacing: 0.5px;
}
.v-food-body {
padding: 1.8rem;
display: flex;
flex-direction: column;
flex-grow: 1;
justify-content: space-between;
}
.v-food-title {
font-size: 1.35rem;
font-weight: 800;
color: #ffffff;
margin-bottom: 0.6rem;
}
.v-food-desc {
font-size: 0.9rem;
color: #94a3b8;
line-height: 1.6;
margin-bottom: 1.5rem;
}
</style>

<div class="venue-redesign">
<!-- Navegación de Pestañas con Glassmorphism -->
<div class="v-tabs-wrapper">
<button class="v-tab-trigger active" onclick="switchRedesignTab(event, 'v-travel')">
<i class="fa-solid fa-route"></i> Cómo Llegar
</button>
<button class="v-tab-trigger" onclick="switchRedesignTab(event, 'v-hotels')">
<i class="fa-solid fa-hotel"></i> Hospedaje
</button>
<button class="v-tab-trigger" onclick="switchRedesignTab(event, 'v-food')">
<i class="fa-solid fa-utensils"></i> Dónde Comer
</button>
</div>

<!-- Contenido Pestaña 1: Cómo Llegar -->
<div id="v-travel" class="v-content-pane active">
<div class="v-travel-grid">
<!-- Tarjeta del Campus Sede -->
<div class="v-hero-card">
<div class="v-card-img-wrap">
<img src="/images/uapa-campus.jpg" alt="Campus UAPA" class="v-card-img" />
<span class="v-hero-badge">
<i class="fa-solid fa-location-dot"></i> Principal
</span>
</div>
<div class="v-card-body">
<h3 class="v-card-title">Sede del Evento</h3>
<p class="v-card-text">
La <strong>Universidad Abierta para Adultos (UAPA)</strong> se encuentra ubicada en la Av. Hispanoamericana, en la zona sur de Santiago de los Caballeros.
</p>
<p class="v-card-text" style="margin-bottom: 0;">
<strong>Facilidad de Acceso:</strong> Se accede directamente desde la Autopista Duarte. Contamos con un amplio parqueo gratuito y con seguridad vigilada disponible para todos los asistentes durante la jornada de la conferencia.
</p>
</div>
</div>

<!-- Opciones de Transporte -->
<div class="v-options-list">
<div class="v-option-card">
<div class="v-option-icon">
<i class="fa-solid fa-plane-departure"></i>
</div>
<div class="v-option-info">
<span class="v-option-meta">15 minutos de la sede</span>
<h4 class="v-option-title">Desde el Aeropuerto Cibao (STI)</h4>
<p class="v-option-desc">
Servicio de Uber y taxis locales disponibles en la salida de pasajeros. La ruta al campus por la Autopista Duarte es rápida y directa. Las agencias Avis, Hertz y Europcar operan en esta terminal.
</p>
<a href="https://www.uber.com/do/es/" target="_blank" rel="noopener" class="v-link-btn">
<i class="fa-brands fa-uber"></i> Solicitar Uber <i class="fa-solid fa-arrow-up-right-from-square" style="font-size:0.7rem;"></i>
</a>
</div>
</div>

<div class="v-option-card">
<div class="v-option-icon">
<i class="fa-solid fa-bus"></i>
</div>
<div class="v-option-info">
<span class="v-option-meta">2.5 horas de la sede</span>
<h4 class="v-option-title">Desde Aeropuerto Las Américas (SDQ)</h4>
<p class="v-option-desc">
Autobuses premium interurbanos (Metro ST y Caribe Tours) salen directo desde Santo Domingo con destino a la terminal de Santiago. Alternativamente, se puede reservar traslado privado.
</p>
<div style="display:flex; gap:15px; flex-wrap:wrap;">
<a href="https://metroserviciosturisticos.com/" target="_blank" rel="noopener" class="v-link-btn">
<i class="fa-solid fa-bus-simple"></i> Metro ST <i class="fa-solid fa-arrow-up-right-from-square" style="font-size:0.7rem;"></i>
</a>
<a href="https://caribetours.com.do/" target="_blank" rel="noopener" class="v-link-btn">
<i class="fa-solid fa-bus-simple"></i> Caribe Tours <i class="fa-solid fa-arrow-up-right-from-square" style="font-size:0.7rem;"></i>
</a>
</div>
</div>
</div>
</div>
</div>
</div>

<!-- Contenido Pestaña 2: Hospedaje -->
<div id="v-hotels" class="v-content-pane">
<div class="v-hotel-grid">
<!-- Hotel 1 -->
<div class="v-hotel-card">
<div class="v-hotel-img-wrap">
<img src="/images/hotel-almirante.jpg" alt="Hodelpa Gran Almirante" class="v-hotel-img" />
<span class="v-hotel-stars">★★★★★</span>
</div>
<div class="v-hotel-body">
<div>
<h4 class="v-hotel-title">Hodelpa Gran Almirante</h4>
<p class="v-hotel-desc">Hotel ejecutivo de categoría superior con casino, piscina y excelentes opciones culinarias. Ubicado a 15 min de la sede.</p>
</div>
<div>
<span class="v-hotel-price">
<i class="fa-solid fa-tags"></i> Est. ~$130 - $180 / noche
</span>
<a href="https://www.hodelpa.com/gran-almirante/" target="_blank" rel="noopener" class="v-action-btn">
<i class="fa-solid fa-calendar-check"></i> Reservar Hotel
</a>
</div>
</div>
</div>

<!-- Hotel 2 -->
<div class="v-hotel-card">
<div class="v-hotel-img-wrap">
<img src="/images/hotel-campdavid.jpg" alt="Camp David Ranch" class="v-hotel-img" />
<span class="v-hotel-stars">★★★★☆</span>
</div>
<div class="v-hotel-body">
<div>
<h4 class="v-hotel-title">Camp David Ranch</h4>
<p class="v-hotel-desc">Boutique hotel de montaña con una insuperable vista panorámica de la ciudad y colección de autos clásicos. A 20 min.</p>
</div>
<div>
<span class="v-hotel-price">
<i class="fa-solid fa-tags"></i> Est. ~$120 - $160 / noche
</span>
<a href="https://www.campdavidranch.com/" target="_blank" rel="noopener" class="v-action-btn">
<i class="fa-solid fa-calendar-check"></i> Reservar Hotel
</a>
</div>
</div>
</div>

<!-- Hotel 3 -->
<div class="v-hotel-card">
<div class="v-hotel-img-wrap">
<img src="/images/hotel-platino.jpg" alt="Hotel Platino" class="v-hotel-img" />
<span class="v-hotel-stars">★★★☆☆</span>
</div>
<div class="v-hotel-body">
<div>
<h4 class="v-hotel-title">Hotel Platino</h4>
<p class="v-hotel-desc">Práctico, céntrico y muy funcional. Una opción preferida por profesionales por su gran relación calidad-precio. A 12 min.</p>
</div>
<div>
<span class="v-hotel-price">
<i class="fa-solid fa-tags"></i> Est. ~$60 - $80 / noche
</span>
<a href="https://hotelplatino.com.do/" target="_blank" rel="noopener" class="v-action-btn">
<i class="fa-solid fa-calendar-check"></i> Reservar Hotel
</a>
</div>
</div>
</div>

<!-- Hotel 4 -->
<div class="v-hotel-card">
<div class="v-hotel-img-wrap">
<img src="/images/hotel-centroplaza.jpg" alt="Hodelpa Centro Plaza" class="v-hotel-img" />
<span class="v-hotel-stars">★★★★☆</span>
</div>
<div class="v-hotel-body">
<div>
<h4 class="v-hotel-title">Hodelpa Centro Plaza</h4>
<p class="v-hotel-desc">Situado en el corazón de la zona colonial, con fácil acceso al centro cultural y atracciones históricas de la ciudad. A 15 min.</p>
</div>
<div>
<span class="v-hotel-price">
<i class="fa-solid fa-tags"></i> Est. ~$80 - $110 / noche
</span>
<a href="https://www.hodelpa.com/centro-plaza/" target="_blank" rel="noopener" class="v-action-btn">
<i class="fa-solid fa-calendar-check"></i> Reservar Hotel
</a>
</div>
</div>
</div>
</div>
</div>

<!-- Contenido Pestaña 3: Restaurantes -->
<div id="v-food" class="v-content-pane">
<div class="v-food-grid">
<!-- Restaurante 1 -->
<div class="v-food-card">
<div class="v-food-img-wrap">
<img src="/images/restaurant-saga.jpg" alt="Saga Restaurant" class="v-food-img" />
<span class="v-food-badge">Cortes & Cigar Lounge</span>
</div>
<div class="v-food-body">
<div>
<h4 class="v-food-title">Saga Restaurant</h4>
<p class="v-food-desc">Gastronomía sofisticada, especialidad en cortes de carnes premium y una atmósfera exclusiva de primer nivel.</p>
</div>
<a href="https://www.instagram.com/sagarestaurant/" target="_blank" rel="noopener" class="v-action-btn">
<i class="fa-brands fa-instagram"></i> Instagram
</a>
</div>
</div>

<!-- Restaurante 2 -->
<div class="v-food-card">
<div class="v-food-img-wrap">
<img src="/images/restaurant-noah.jpg" alt="Noah Restaurant" class="v-food-img" />
<span class="v-food-badge">Cocina Fusión Gourmet</span>
</div>
<div class="v-food-body">
<div>
<h4 class="v-food-title">Noah Restaurant</h4>
<p class="v-food-desc">Famoso por su propuesta ecléctica de platos fusión, integrando sabores caribeños e internacionales con alta creatividad.</p>
</div>
<a href="https://www.instagram.com/noah_restaurant/" target="_blank" rel="noopener" class="v-action-btn">
<i class="fa-brands fa-instagram"></i> Instagram
</a>
</div>
</div>

<!-- Restaurante 3 -->
<div class="v-food-card">
<div class="v-food-img-wrap">
<img src="/images/restaurant-tablon.jpg" alt="El Tablón Latino" class="v-food-img" />
<span class="v-food-badge">Comida Latina Casual</span>
</div>
<div class="v-food-body">
<div>
<h4 class="v-food-title">El Tablón Latino</h4>
<p class="v-food-desc">Exquisitos platos locales y coctelería tropical. Disfruta de un ambiente animado con espectaculares vistas al Monumento.</p>
</div>
<a href="https://www.instagram.com/eltablonlatino/" target="_blank" rel="noopener" class="v-action-btn">
<i class="fa-brands fa-instagram"></i> Instagram
</a>
</div>
</div>
</div>
</div>
</div>
</div>

<script>
function switchRedesignTab(event, tabId) {
const panes = document.querySelectorAll('.v-content-pane');
panes.forEach(p => {
p.classList.remove('active');
p.style.opacity = 0;
p.style.transform = 'translateY(20px)';
});

const triggers = document.querySelectorAll('.v-tab-trigger');
triggers.forEach(t => t.classList.remove('active'));

const activePane = document.getElementById(tabId);
activePane.classList.add('active');
event.currentTarget.classList.add('active');

// Trigger reflow for animation restart
void activePane.offsetWidth;
activePane.style.opacity = 1;
activePane.style.transform = 'translateY(0)';
}
</script>
