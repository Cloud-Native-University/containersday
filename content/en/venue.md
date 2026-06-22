---
title: "Venue"
description: "Universidad Abierta para Adultos (UAPA), Santiago de los Caballeros. Find out how to get to the venue of Containers Day 2026."
layout: "location"
type: "miscellaneous"
---

<style>
  .venue-tabs {
    display: flex;
    justify-content: center;
    border-bottom: 2px solid rgba(255, 255, 255, 0.08);
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
    color: #94a3b8;
    cursor: pointer;
    position: relative;
    transition: all 0.2s ease-in-out;
    border-bottom: 3px solid transparent;
    white-space: nowrap;
  }
  .venue-tab-btn:hover {
    color: #ffffff;
  }
  .venue-tab-btn.active {
    color: #38bdf8;
    border-bottom: 3px solid #38bdf8;
  }
  .venue-tab-content {
    display: none;
    animation: fadeInTab 0.35s ease;
  }
  .venue-tab-content.active {
    display: block;
  }
  .venue-card {
    background: rgba(255, 255, 255, 0.03);
    border: 1px solid rgba(255, 255, 255, 0.08);
    border-radius: 12px;
    overflow: hidden;
    box-shadow: 0 4px 20px rgba(0, 0, 0, 0.15);
    transition: transform 0.25s ease, border-color 0.25s ease;
  }
  .venue-card:hover {
    transform: translateY(-2px);
    border-color: rgba(56, 189, 248, 0.3);
  }
  .venue-btn-outline {
    border-radius: 6px;
    font-size: 0.75rem;
    color: #ffffff;
    border-color: rgba(255, 255, 255, 0.25);
    background: transparent;
    transition: all 0.2s ease;
  }
  .venue-btn-outline:hover {
    background: rgba(255, 255, 255, 0.08);
    border-color: #ffffff;
    color: #ffffff;
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
  <!-- Tabs Navigation -->
  <div class="venue-tabs">
    <button class="venue-tab-btn active" onclick="switchVenueTab(event, 'tab-travel')">
      🚗 Directions
    </button>
    <button class="venue-tab-btn" onclick="switchVenueTab(event, 'tab-hotels')">
      🏨 Accommodations
    </button>
    <button class="venue-tab-btn" onclick="switchVenueTab(event, 'tab-food')">
      🍽️ Where to Eat
    </button>
  </div>

  <!-- Tab 1: Directions -->
  <div id="tab-travel" class="venue-tab-content active">
    <div class="row">
      <div class="col-md-6 mb-4">
        <div class="h-100 d-flex flex-column venue-card">
          <img src="/images/uapa-campus.jpg" alt="UAPA Campus" style="width: 100%; height: 210px; object-fit: cover;" />
          <div class="p-4 flex-grow-1">
            <h3 class="fs-5 fw-bold text-white mb-3">📍 Event Venue</h3>
            <p style="color: #cbd5e1; font-size: 0.9rem; line-height: 1.6; margin-bottom: 1rem;">
              The <strong>Universidad Abierta para Adultos (UAPA)</strong> is located on Av. Hispanoamericana, in the southern district of Santiago de los Caballeros.
            </p>
            <p style="color: #cbd5e1; font-size: 0.9rem; line-height: 1.6; margin-bottom: 0;">
              <strong>By car or taxi:</strong> Easily accessible via the Duarte Highway. There is ample free, secure, and monitored parking available on-site for all conference attendees.
            </p>
          </div>
        </div>
      </div>

      <div class="col-md-6">
        <div class="p-4 mb-3 venue-card">
          <div class="d-flex align-items-center mb-3">
            <span class="d-flex align-items-center justify-content-center rounded me-3" style="width: 40px; height: 40px; background: rgba(56, 189, 248, 0.08); color: #38bdf8;">
              <i class="fa-solid fa-plane" style="font-size: 1.15rem;"></i>
            </span>
            <div>
              <h4 class="fs-6 fw-bold mb-0 text-white">From Cibao Airport (STI)</h4>
              <small style="color: #94a3b8; font-weight: 600;">15 minutes away from the venue</small>
            </div>
          </div>
          <p style="color: #cbd5e1; font-size: 0.85rem; line-height: 1.55; margin-bottom: 0;">
            Uber and taxi services are readily available outside the arrivals terminal. The ride to the campus takes approximately 15 minutes. Car rental agencies (Avis, Hertz, Europcar) also operate at the airport.
            <a href="https://www.uber.com/do/en/" target="_blank" rel="noopener" class="d-inline-block text-decoration-none ms-1 fw-semibold" style="color: #38bdf8;">
              <i class="fa-brands fa-uber" style="margin-right: 3px;"></i> Request Uber <i class="fa-solid fa-arrow-up-right-from-square" style="font-size: 0.65rem; margin-left: 2px;"></i>
            </a>
          </p>
        </div>

        <div class="p-4 venue-card">
          <div class="d-flex align-items-center mb-3">
            <span class="d-flex align-items-center justify-content-center rounded me-3" style="width: 40px; height: 40px; background: rgba(56, 189, 248, 0.08); color: #38bdf8;">
              <i class="fa-solid fa-bus" style="font-size: 1.15rem;"></i>
            </span>
            <div>
              <h4 class="fs-6 fw-bold mb-0 text-white">From Las Américas Airport (SDQ)</h4>
              <small style="color: #94a3b8; font-weight: 600;">2.5 hours away from the venue</small>
            </div>
          </div>
          <p style="color: #cbd5e1; font-size: 0.85rem; line-height: 1.55; margin-bottom: 0;">
            Express buses (Metro ST and Caribe Tours) travel directly from Santo Domingo to Santiago along the Duarte Highway. Direct private shuttles can also be arranged.
            <a href="https://metroserviciosturisticos.com/" target="_blank" rel="noopener" class="text-decoration-none ms-1 me-2 fw-semibold" style="color: #38bdf8;">
              <i class="fa-solid fa-bus-simple" style="margin-right: 3px;"></i> Metro ST <i class="fa-solid fa-arrow-up-right-from-square" style="font-size: 0.65rem; margin-left: 2px;"></i>
            </a>
            <a href="https://caribetours.com.do/" target="_blank" rel="noopener" class="text-decoration-none fw-semibold" style="color: #38bdf8;">
              <i class="fa-solid fa-bus-simple" style="margin-right: 3px;"></i> Caribe Tours <i class="fa-solid fa-arrow-up-right-from-square" style="font-size: 0.65rem; margin-left: 2px;"></i>
            </a>
          </p>
        </div>
      </div>
    </div>
  </div>

  <!-- Tab 2: Hotels -->
  <div id="tab-hotels" class="venue-tab-content">
    <div class="row">
      <div class="col-lg-3 col-sm-6 mb-3">
        <div class="h-100 d-flex flex-column venue-card">
          <img src="/images/hotel-almirante.jpg" alt="Hodelpa Gran Almirante" style="width: 100%; height: 140px; object-fit: cover;" />
          <div class="p-3 text-center d-flex flex-column justify-content-between flex-grow-1">
            <div>
              <span class="d-inline-block mb-1 text-warning" style="font-size: 0.8rem;">★★★★★</span>
              <h4 class="fs-6 fw-bold text-white mb-1">Hodelpa Gran Almirante</h4>
              <p class="mb-2" style="color: #cbd5e1; font-size: 0.8rem; line-height: 1.4;">Business hotel featuring a casino and pool. 15 mins away.</p>
              <p class="fw-bold mb-3" style="color: #f59e0b; font-size: 0.85rem;">Est. ~$130 - $180 / night</p>
            </div>
            <a href="https://www.hodelpa.com/gran-almirante/" target="_blank" rel="noopener" class="btn btn-sm btn-outline-secondary w-100 fw-semibold venue-btn-outline">
              <i class="fa-solid fa-calendar-check" style="margin-right: 4px;"></i> Book Room
            </a>
          </div>
        </div>
      </div>

      <div class="col-lg-3 col-sm-6 mb-3">
        <div class="h-100 d-flex flex-column venue-card">
          <img src="/images/hotel-campdavid.jpg" alt="Camp David Ranch" style="width: 100%; height: 140px; object-fit: cover;" />
          <div class="p-3 text-center d-flex flex-column justify-content-between flex-grow-1">
            <div>
              <span class="d-inline-block mb-1 text-warning" style="font-size: 0.8rem;">★★★★☆</span>
              <h4 class="fs-6 fw-bold text-white mb-1">Camp David Ranch</h4>
              <p class="mb-2" style="color: #cbd5e1; font-size: 0.8rem; line-height: 1.4;">Mountain boutique hotel with panoramic views. 20 mins away.</p>
              <p class="fw-bold mb-3" style="color: #f59e0b; font-size: 0.85rem;">Est. ~$120 - $160 / night</p>
            </div>
            <a href="https://www.campdavidranch.com/" target="_blank" rel="noopener" class="btn btn-sm btn-outline-secondary w-100 fw-semibold venue-btn-outline">
              <i class="fa-solid fa-calendar-check" style="margin-right: 4px;"></i> Book Room
            </a>
          </div>
        </div>
      </div>

      <div class="col-lg-3 col-sm-6 mb-3">
        <div class="h-100 d-flex flex-column venue-card">
          <img src="/images/hotel-platino.jpg" alt="Hotel Platino" style="width: 100%; height: 140px; object-fit: cover;" />
          <div class="p-3 text-center d-flex flex-column justify-content-between flex-grow-1">
            <div>
              <span class="d-inline-block mb-1 text-warning" style="font-size: 0.8rem;">★★★☆☆</span>
              <h4 class="fs-6 fw-bold text-white mb-1">Hotel Platino</h4>
              <p class="mb-2" style="color: #cbd5e1; font-size: 0.8rem; line-height: 1.4;">Corporate, functional and very cost-effective option. 12 mins away.</p>
              <p class="fw-bold mb-3" style="color: #f59e0b; font-size: 0.85rem;">Est. ~$60 - $80 / night</p>
            </div>
            <a href="https://hotelplatino.com.do/" target="_blank" rel="noopener" class="btn btn-sm btn-outline-secondary w-100 fw-semibold venue-btn-outline">
              <i class="fa-solid fa-calendar-check" style="margin-right: 4px;"></i> Book Room
            </a>
          </div>
        </div>
      </div>

      <div class="col-lg-3 col-sm-6 mb-3">
        <div class="h-100 d-flex flex-column venue-card">
          <img src="/images/hotel-centroplaza.jpg" alt="Hodelpa Centro Plaza" style="width: 100%; height: 140px; object-fit: cover;" />
          <div class="p-3 text-center d-flex flex-column justify-content-between flex-grow-1">
            <div>
              <span class="d-inline-block mb-1 text-warning" style="font-size: 0.8rem;">★★★★☆</span>
              <h4 class="fs-6 fw-bold text-white mb-1">Hodelpa Centro Plaza</h4>
              <p class="mb-2" style="color: #cbd5e1; font-size: 0.8rem; line-height: 1.4;">Located in the heart of colonial area fronting central park. 15 mins away.</p>
              <p class="fw-bold mb-3" style="color: #f59e0b; font-size: 0.85rem;">Est. ~$80 - $110 / night</p>
            </div>
            <a href="https://www.hodelpa.com/centro-plaza/" target="_blank" rel="noopener" class="btn btn-sm btn-outline-secondary w-100 fw-semibold venue-btn-outline">
              <i class="fa-solid fa-calendar-check" style="margin-right: 4px;"></i> Book Room
            </a>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- Tab 3: Restaurants -->
  <div id="tab-food" class="venue-tab-content">
    <div class="row">
      <div class="col-md-4 mb-3">
        <div class="h-100 d-flex flex-column venue-card">
          <img src="/images/restaurant-saga.jpg" alt="Saga Restaurant" style="width: 100%; height: 160px; object-fit: cover;" />
          <div class="p-4 d-flex flex-column justify-content-between flex-grow-1">
            <div>
              <h3 class="fs-5 fw-bold text-white mb-1">Saga Restaurant</h3>
              <span class="d-inline-block badge mb-3" style="font-size: 0.7rem; padding: 4px 8px; background-color: rgba(255, 255, 255, 0.08); color: #cbd5e1; font-weight: 600;">Steaks & Cigar Lounge</span>
              <p class="mb-3" style="color: #cbd5e1; font-size: 0.85rem; line-height: 1.5;">Upscale international menu and fine steak cuts in a premium setting.</p>
            </div>
            <a href="https://www.instagram.com/sagarestaurant/" target="_blank" rel="noopener" class="text-decoration-none small fw-semibold" style="color: #38bdf8;">
              <i class="fa-brands fa-instagram" style="font-size: 1rem; margin-right: 3px; vertical-align: middle;"></i> Instagram <i class="fa-solid fa-arrow-up-right-from-square" style="font-size: 0.65rem; margin-left: 2px;"></i>
            </a>
          </div>
        </div>
      </div>

      <div class="col-md-4 mb-3">
        <div class="h-100 d-flex flex-column venue-card">
          <img src="/images/restaurant-noah.jpg" alt="Noah Restaurant" style="width: 100%; height: 160px; object-fit: cover;" />
          <div class="p-4 d-flex flex-column justify-content-between flex-grow-1">
            <div>
              <h3 class="fs-5 fw-bold text-white mb-1">Noah Restaurant</h3>
              <span class="d-inline-block badge mb-3" style="font-size: 0.7rem; padding: 4px 8px; background-color: rgba(255, 255, 255, 0.08); color: #cbd5e1; font-weight: 600;">Gourmet Fusion Cuisine</span>
              <p class="mb-3" style="color: #cbd5e1; font-size: 0.85rem; line-height: 1.5;">Signature fusion dishes combining local Dominican and world flavors.</p>
            </div>
            <a href="https://www.instagram.com/noah_restaurant/" target="_blank" rel="noopener" class="text-decoration-none small fw-semibold" style="color: #38bdf8;">
              <i class="fa-brands fa-instagram" style="font-size: 1rem; margin-right: 3px; vertical-align: middle;"></i> Instagram <i class="fa-solid fa-arrow-up-right-from-square" style="font-size: 0.65rem; margin-left: 2px;"></i>
            </a>
          </div>
        </div>
      </div>

      <div class="col-md-4 mb-3">
        <div class="h-100 d-flex flex-column venue-card">
          <img src="/images/restaurant-tablon.jpg" alt="El Tablón Latino" style="width: 100%; height: 160px; object-fit: cover;" />
          <div class="p-4 d-flex flex-column justify-content-between flex-grow-1">
            <div>
              <h3 class="fs-5 fw-bold text-white mb-1">El Tablón Latino</h3>
              <span class="d-inline-block badge mb-3" style="font-size: 0.7rem; padding: 4px 8px; background-color: rgba(255, 255, 255, 0.08); color: #cbd5e1; font-weight: 600;">Casual Latin Food</span>
              <p class="mb-3" style="color: #cbd5e1; font-size: 0.85rem; line-height: 1.5;">Caribbean cuisine and drinks in a lively setting overlooking the Monument.</p>
            </div>
            <a href="https://www.instagram.com/eltablonlatino/" target="_blank" rel="noopener" class="text-decoration-none small fw-semibold" style="color: #38bdf8;">
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
    // Hide all tab contents
    const contents = document.querySelectorAll('.venue-tab-content');
    contents.forEach(c => c.classList.remove('active'));

    // Deactivate all buttons
    const buttons = document.querySelectorAll('.venue-tab-btn');
    buttons.forEach(b => b.classList.remove('active'));

    // Show active content and make current button active
    document.getElementById(tabId).classList.add('active');
    event.currentTarget.classList.add('active');
  }
</script>
