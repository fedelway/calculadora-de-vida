<script>
    export let clazz;
    export let race;
    export let hp;
    export let lvl;

    let up = hp - ((lvl - 13) * race.average + race.hpAt13);
</script>

<div class="section">
<div class="content">
    <p>Un <b>{clazz} {race.race}</b> con nivel <b>{lvl}</b> debería tener: 
    <b>{race.average * (lvl - 13) + race.hpAt13} de vida</b></p>

    <p>Tu personaje tiene <b>{up}</b> más de lo normal</p>
</div>
</div>

<style>
    p {
        font-size:150%;
        color: rgb(38, 41, 56)
    }
</style>