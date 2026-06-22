---
title: "Sede"
description: "Universidad Abierta para Adultos (UAPA), Santiago de los Caballeros. Conoce cómo llegar a la sede del Containers Day 2026."
layout: "location"
type: "miscellaneous"
---

<style>
  .venue-tabs {
    display: flex;
    justify-content: center;
    border-bottom: 2px solid #e2e8f0;
    margin-bottom: 2.5rem;
    gap: 1rem;
    overflow-x: auto;
    -webkit-overflow-scrolling: touch;
    scrollbar-width: none;
  }
  .venue-tabs::-webkit-scrollbar {
    display: none;
  }
  .venue-tab-btn {
    background: none;
    border: none;
    padding: 12px 24px;
    font-size: 1.05rem;
    font-weight: 600;
    color: #475569;
    cursor: pointer;
    position: relative;
    transition: all 0.2s ease-in-out;
    border-bottom: 3px solid transparent;
    white-space: nowrap;
  }
  .venue-tab-btn:hover {
    color: #0f172a;
  }
  .venue-tab-btn.active {
    color: #1d4ed8;
    border-bottom: 3px solid #1d4ed8;
  }
  .venue-tab-content {
    display: none;
    animation: fadeInTab 0.35s ease;
  }
  .venue-tab-content.active {
    display: block;
  }
  @keyframes fadeInTab {
    from { opacity: 0; transform: translateY(6px); }
    to { opacity: 1; transform: translateY(0); }
  }
  @media (max-width: 576px) {
    .venue-tabs {
      justify-content: flex-start;
      padding-left: 0.5rem;
      padding-right: 0.5rem;
      gap: 0.5rem;
    }
    .venue-tab-btn {
      padding: 10px 16px;
      font-size: 0.95rem;
    }
  }
</style>

<div class="container py-2">
  <!-- Navegación de Pestañas -->
  <div class="venue-tabs">
    <button class="venue-tab-btn active" onclick="switchVenueTab(event, 'tab-travel')">
      🚗 Cómo Llegar
    </button>
    <button class="venue-tab-btn" onclick="switchVenueTab(event, 'tab-hotels')">
      🏨 Hospedaje
    </button>
    <button class="venue-tab-btn" onclick="switchVenueTab(event, 'tab-food')">
      🍽️ Dónde Comer
    </button>
  </div>

  <!-- Pestaña 1: Cómo Llegar -->
  <div id="tab-travel" class="venue-tab-content active">
    <div class="row">
      <div class="col-md-6 mb-4">
        <div class="h-100 d-flex flex-column" style="background: #ffffff; border: 1px solid rgba(0,0,0,0.06); border-radius: 12px; overflow: hidden; box-shadow: 0 1px 3px rgba(0,0,0,0.02);">
          <img src="/images/uapa-campus.jpg" alt="Campus UAPA" style="width: 100%; height: 210px; object-fit: cover;" />
          <div class="p-4 flex-grow-1">
            <h3 class="fs-5 fw-bold text-dark mb-3">📍 Sede del Evento</h3>
            <p style="color: #374151; font-size: 0.9rem; line-height: 1.6; margin-bottom: 1rem;">
              La <strong>Universidad Abierta para Adultos (UAPA)</strong> se encuentra ubicada en la Av. Hispanoamericana, en la zona sur de Santiago de los Caballeros.
            </p>
            <p style="color: #374151; font-size: 0.9rem; line-height: 1.6; margin-bottom: 0;">
              <strong>En vehículo o taxi:</strong> Se accede con facilidad a través de la Autopista Duarte. Contamos con un amplio parqueo gratuito y vigilado disponible para todos los asistentes de la conferencia.
            </p>
          </div>
        </div>
      </div>

      <div class="col-md-6">
        <div class="p-4 mb-3" style="background: #ffffff; border: 1px solid rgba(0,0,0,0.06); border-radius: 12px; box-shadow: 0 1px 3px rgba(0,0,0,0.02);">
          <div class="d-flex align-items-center mb-3">
            <span class="d-flex align-items-center justify-content-center text-primary rounded me-3" style="width: 40px; height: 40px; background: rgba(35, 120, 176, 0.08);">
              <i class="fa-solid fa-plane" style="font-size: 1.15rem;"></i>
            </span>
            <div>
              <h4 class="fs-6 fw-bold mb-0 text-dark">Desde el Aeropuerto Cibao (STI)</h4>
              <small style="color: #4b5563; font-weight: 600;">A 15 minutos de la sede</small>
            </div>
          </div>
          <p style="color: #374151; font-size: 0.85rem; line-height: 1.55; margin-bottom: 0;">
            Uber y servicios de taxi están disponibles al salir de la terminal. El trayecto hacia el campus toma aproximadamente 15 minutos. Las agencias Avis, Hertz y Europcar también operan en el aeropuerto.
            <a href="https://www.uber.com/do/es/" target="_blank" rel="noopener" class="d-inline-block text-decoration-none ms-1 fw-semibold" style="color: #1d4ed8;">
              <i class="fa-brands fa-uber" style="margin-right: 3px;"></i> Pedir Uber <i class="fa-solid fa-arrow-up-right-from-square" style="font-size: 0.65rem; margin-left: 2px;"></i>
            </a>
          </p>
        </div>

        <div class="p-4" style="background: #ffffff; border: 1px solid rgba(0,0,0,0.06); border-radius: 12px; box-shadow: 0 1px 3px rgba(0,0,0,0.02);">
          <div class="d-flex align-items-center mb-3">
            <span class="d-flex align-items-center justify-content-center text-primary rounded me-3" style="width: 40px; height: 40px; background: rgba(35, 120, 176, 0.08);">
              <i class="fa-solid fa-bus" style="font-size: 1.15rem;"></i>
            </span>
            <div>
              <h4 class="fs-6 fw-bold mb-0 text-dark">Desde el Aeropuerto Las Américas (SDQ)</h4>
              <small style="color: #4b5563; font-weight: 600;">A 2.5 horas de la sede</small>
            </div>
          </div>
          <p style="color: #374151; font-size: 0.85rem; line-height: 1.55; margin-bottom: 0;">
            Los autobuses express Metro ST y Caribe Tours viajan directo desde Santo Domingo hacia Santiago por la Autopista Duarte. También se puede programar un servicio de traslado privado.
            <a href="https://metroserviciosturisticos.com/" target="_blank" rel="noopener" class="text-decoration-none ms-1 me-2 fw-semibold" style="color: #1d4ed8;">
              <i class="fa-solid fa-bus-simple" style="margin-right: 3px;"></i> Metro ST <i class="fa-solid fa-arrow-up-right-from-square" style="font-size: 0.65rem; margin-left: 2px;"></i>
            </a>
            <a href="https://caribetours.com.do/" target="_blank" rel="noopener" class="text-decoration-none fw-semibold" style="color: #1d4ed8;">
              <i class="fa-solid fa-bus-simple" style="margin-right: 3px;"></i> Caribe Tours <i class="fa-solid fa-arrow-up-right-from-square" style="font-size: 0.65rem; margin-left: 2px;"></i>
            </a>
          </p>
        </div>
      </div>
    </div>
  </div>

  <!-- Pestaña 2: Hoteles -->
  <div id="tab-hotels" class="venue-tab-content">
    <div class="row">
      <div class="col-lg-3 col-sm-6 mb-3">
        <div class="h-100 d-flex flex-column" style="background: #ffffff; border: 1px solid rgba(0,0,0,0.06); border-radius: 12px; overflow: hidden; box-shadow: 0 1px 3px rgba(0,0,0,0.02);">
          <img src="/images/hotel-almirante.jpg" alt="Hodelpa Gran Almirante" style="width: 100%; height: 140px; object-fit: cover;" />
          <div class="p-3 text-center d-flex flex-column justify-content-between flex-grow-1">
            <div>
              <span class="d-inline-block mb-1 text-warning" style="font-size: 0.8rem;">★★★★★</span>
              <h4 class="fs-6 fw-bold text-dark mb-1">Hodelpa Gran Almirante</h4>
              <p class="mb-2" style="color: #374151; font-size: 0.8rem; line-height: 1.4;">Hotel de negocios con casino y piscina. A 15 min de la sede.</p>
              <p class="fw-bold mb-3" style="color: #0f172a; font-size: 0.85rem;">Est. ~$130 - $180 / noche</p>
            </div>
            <a href="https://www.hodelpa.com/gran-almirante/" target="_blank" rel="noopener" class="btn btn-sm btn-outline-secondary w-100 fw-semibold" style="border-radius: 6px; font-size: 0.75rem; color: #1e293b; border-color: #94a3b8;">
              <i class="fa-solid fa-calendar-check" style="margin-right: 4px;"></i> Reservar
            </a>
          </div>
        </div>
      </div>

      <div class="col-lg-3 col-sm-6 mb-3">
        <div class="h-100 d-flex flex-column" style="background: #ffffff; border: 1px solid rgba(0,0,0,0.06); border-radius: 12px; overflow: hidden; box-shadow: 0 1px 3px rgba(0,0,0,0.02);">
          <img src="/images/hotel-campdavid.jpg" alt="Camp David Ranch" style="width: 100%; height: 140px; object-fit: cover;" />
          <div class="p-3 text-center d-flex flex-column justify-content-between flex-grow-1">
            <div>
              <span class="d-inline-block mb-1 text-warning" style="font-size: 0.8rem;">★★★★☆</span>
              <h4 class="fs-6 fw-bold text-dark mb-1">Camp David Ranch</h4>
              <p class="mb-2" style="color: #374151; font-size: 0.8rem; line-height: 1.4;">Hotel de montaña con vista panorámica de la ciudad. A 20 min.</p>
              <p class="fw-bold mb-3" style="color: #0f172a; font-size: 0.85rem;">Est. ~$120 - $160 / noche</p>
            </div>
            <a href="https://www.campdavidranch.com/" target="_blank" rel="noopener" class="btn btn-sm btn-outline-secondary w-100 fw-semibold" style="border-radius: 6px; font-size: 0.75rem; color: #1e293b; border-color: #94a3b8;">
              <i class="fa-solid fa-calendar-check" style="margin-right: 4px;"></i> Reservar
            </a>
          </div>
        </div>
      </div>

      <div class="col-lg-3 col-sm-6 mb-3">
        <div class="h-100 d-flex flex-column" style="background: #ffffff; border: 1px solid rgba(0,0,0,0.06); border-radius: 12px; overflow: hidden; box-shadow: 0 1px 3px rgba(0,0,0,0.02);">
          <img src="/images/hotel-platino.jpg" alt="Hotel Platino" style="width: 100%; height: 140px; object-fit: cover;" />
          <div class="p-3 text-center d-flex flex-column justify-content-between flex-grow-1">
            <div>
              <span class="d-inline-block mb-1 text-warning" style="font-size: 0.8rem;">★★★☆☆</span>
              <h4 class="fs-6 fw-bold text-dark mb-1">Hotel Platino</h4>
              <p class="mb-2" style="color: #374151; font-size: 0.8rem; line-height: 1.4;">Opción corporativa, económica y muy funcional. A 12 min.</p>
              <p class="fw-bold mb-3" style="color: #0f172a; font-size: 0.85rem;">Est. ~$60 - $80 / noche</p>
            </div>
            <a href="https://hotelplatino.com.do/" target="_blank" rel="noopener" class="btn btn-sm btn-outline-secondary w-100 fw-semibold" style="border-radius: 6px; font-size: 0.75rem; color: #1e293b; border-color: #94a3b8;">
              <i class="fa-solid fa-calendar-check" style="margin-right: 4px;"></i> Reservar
            </a>
          </div>
        </div>
      </div>

      <div class="col-lg-3 col-sm-6 mb-3">
        <div class="h-100 d-flex flex-column" style="background: #ffffff; border: 1px solid rgba(0,0,0,0.06); border-radius: 12px; overflow: hidden; box-shadow: 0 1px 3px rgba(0,0,0,0.02);">
          <img src="/images/hotel-centroplaza.jpg" alt="Hodelpa Centro Plaza" style="width: 100%; height: 140px; object-fit: cover;" />
          <div class="p-3 text-center d-flex flex-column justify-content-between flex-grow-1">
            <div>
              <span class="d-inline-block mb-1 text-warning" style="font-size: 0.8rem;">★★★★☆</span>
              <h4 class="fs-6 fw-bold text-dark mb-1">Hodelpa Centro Plaza</h4>
              <p class="mb-2" style="color: #374151; font-size: 0.8rem; line-height: 1.4;">Ubicado en el centro histórico frente al parque. A 15 min.</p>
              <p class="fw-bold mb-3" style="color: #0f172a; font-size: 0.85rem;">Est. ~$80 - $110 / noche</p>
            </div>
            <a href="https://www.hodelpa.com/centro-plaza/" target="_blank" rel="noopener" class="btn btn-sm btn-outline-secondary w-100 fw-semibold" style="border-radius: 6px; font-size: 0.75rem; color: #1e293b; border-color: #94a3b8;">
              <i class="fa-solid fa-calendar-check" style="margin-right: 4px;"></i> Reservar
            </a>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- Pestaña 3: Restaurantes -->
  <div id="tab-food" class="venue-tab-content">
    <div class="row">
      <div class="col-md-4 mb-3">
        <div class="h-100 d-flex flex-column" style="background: #ffffff; border: 1px solid rgba(0,0,0,0.06); border-radius: 12px; overflow: hidden; box-shadow: 0 1px 3px rgba(0,0,0,0.02);">
          <img src="/images/restaurant-saga.jpg" alt="Saga Restaurant" style="width: 100%; height: 160px; object-fit: cover;" />
          <div class="p-4 d-flex flex-column justify-content-between flex-grow-1">
            <div>
              <h3 class="fs-5 fw-bold text-dark mb-1">Saga Restaurant</h3>
              <span class="d-inline-block badge mb-3" style="font-size: 0.7rem; padding: 4px 8px; background-color: #f1f5f9; color: #334155; font-weight: 600;">Cortes & Cigar Lounge</span>
              <p class="mb-3" style="color: #374151; font-size: 0.85rem; line-height: 1.5;">Alta cocina internacional y cortes premium en un ambiente distinguido.</p>
            </div>
            <a href="https://www.instagram.com/sagarestaurant/" target="_blank" rel="noopener" class="text-decoration-none small fw-semibold" style="color: #1d4ed8;">
              <i class="fa-brands fa-instagram" style="font-size: 1rem; margin-right: 3px; vertical-align: middle;"></i> Instagram <i class="fa-solid fa-arrow-up-right-from-square" style="font-size: 0.65rem; margin-left: 2px;"></i>
            </a>
          </div>
        </div>
      </div>

      <div class="col-md-4 mb-3">
        <div class="h-100 d-flex flex-column" style="background: #ffffff; border: 1px solid rgba(0,0,0,0.06); border-radius: 12px; overflow: hidden; box-shadow: 0 1px 3px rgba(0,0,0,0.02);">
          <img src="/images/restaurant-noah.jpg" alt="Noah Restaurant" style="width: 100%; height: 160px; object-fit: cover;" />
          <div class="p-4 d-flex flex-column justify-content-between flex-grow-1">
            <div>
              <h3 class="fs-5 fw-bold text-dark mb-1">Noah Restaurant</h3>
              <span class="d-inline-block badge mb-3" style="font-size: 0.7rem; padding: 4px 8px; background-color: #f1f5f9; color: #334155; font-weight: 600;">Cocina Fusión Gourmet</span>
              <p class="mb-3" style="color: #374151; font-size: 0.85rem; line-height: 1.5;">Platos de autor y fusión dominicana internacional de gran calidad.</p>
            </div>
            <a href="https://www.instagram.com/noah_restaurant/" target="_blank" rel="noopener" class="text-decoration-none small fw-semibold" style="color: #1d4ed8;">
              <i class="fa-brands fa-instagram" style="font-size: 1rem; margin-right: 3px; vertical-align: middle;"></i> Instagram <i class="fa-solid fa-arrow-up-right-from-square" style="font-size: 0.65rem; margin-left: 2px;"></i>
            </a>
          </div>
        </div>
      </div>

      <div class="col-md-4 mb-3">
        <div class="h-100 d-flex flex-column" style="background: #ffffff; border: 1px solid rgba(0,0,0,0.06); border-radius: 12px; overflow: hidden; box-shadow: 0 1px 3px rgba(0,0,0,0.02);">
          <img src="/images/restaurant-tablon.jpg" alt="El Tablón Latino" style="width: 100%; height: 160px; object-fit: cover;" />
          <div class="p-4 d-flex flex-column justify-content-between flex-grow-1">
            <div>
              <h3 class="fs-5 fw-bold text-dark mb-1">El Tablón Latino</h3>
              <span class="d-inline-block badge mb-3" style="font-size: 0.7rem; padding: 4px 8px; background-color: #f1f5f9; color: #334155; font-weight: 600;">Comida Latina Casual</span>
              <p class="mb-3" style="color: #374151; font-size: 0.85rem; line-height: 1.5;">Gastronomía caribeña y tragos en un ambiente festivo frente al Monumento.</p>
            </div>
            <a href="https://www.instagram.com/eltablonlatino/" target="_blank" rel="noopener" class="text-decoration-none small fw-semibold" style="color: #1d4ed8;">
              <i class="fa-brands fa-instagram" style="font-size: 1rem; margin-right: 3px; vertical-align: middle;"></i> Instagram <i class="fa-solid fa-arrow-up-right-from-square" style="font-size: 0.65rem; margin-left: 2px;"></i>
            </a>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<script>
  function switchVenueTab(event, tabId) {
    // Esconder todos los contenidos de las pestañas
    const contents = document.querySelectorAll('.venue-tab-content');
    contents.forEach(c => c.classList.remove('active'));

    // Desactivar todos los botones
    const buttons = document.querySelectorAll('.venue-tab-btn');
    buttons.forEach(b => b.classList.remove('active'));

    // Mostrar el contenido activo y añadir clase activa al botón presionado
    document.getElementById(tabId).classList.add('active');
    event.currentTarget.classList.add('active');
  }
</script>
