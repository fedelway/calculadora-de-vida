<script>
    export let clazz;
    export let race;
    export let hp;
    export let lvl;

    let up = hp - ((lvl - 13) * race.average + race.hpAt13);

    let text;

    if (up > 0) {
        text = `Tu personaje tiene <b>${up}</b> de vida más de lo normal`;
    } else if (up < 0) {
        text = `Tu personaje esta bajo <b>${up}</b> del promedio`;
    } else text = 'Tu personaje tiene la vida promedio acorde al nivel';
</script>

<div class="section">
<div class="content">
    <p>Un <b>{clazz} {race.race}</b> con nivel <b>{lvl}</b> debería tener: 
    <b>{race.average * (lvl - 13) + race.hpAt13} de vida</b></p>

    <p>{@html text}</p>
</div>
</div>

<style>
    p {
        font-size:150%;
        color: rgb(38, 41, 56)
    }
</style>