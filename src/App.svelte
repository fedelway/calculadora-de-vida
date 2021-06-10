<script>
	import Calculator from "./Calculator.svelte";
	import "../node_modules/bulma/css/bulma.min.css";
</script>

<main>

  <section class="hero is-fullheight">
    <div class="hero-head">
      <div class="container has-text-centered">
        <p class="title">
          Calculadora de Vida
        </p>
        <p class="subtitle">
          Furius AO
        </p>
      </div>
    </div>

    <div class="hero-body">
      <div class="container is-max-desktop">
        <div class="card back-scroll">
          <Calculator/>
        </div>
      </div>
    </div>
</section>
</main>

<style>
  main {
    background-image: url(../fondo2020.jpg);
    background-size: 100% 100%;
    height: 100%;
  }

  p {
    font-size: 200%;
    color: rgb(92, 79, 64);
  }
  section {
    height: 100%;
  }

  .back-scroll {
    background: url(../images/asd.png) left top no-repeat, 
	      url(../images/indice.png) top right no-repeat,
	      url(../images/indice2.png) top repeat-x,
	      url(../images/indice3.png) left bottom no-repeat,
	      url(../images/indice12.png) left repeat-y,
	      url(../images/indice5.png) bottom right no-repeat,
	      url(../images/indice6.png) bottom repeat-x, 
	      url(../images/42.png) right repeat-y,
	      url(../images/body.png) center;

    padding: 3rem 3rem;
  }
</style>