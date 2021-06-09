<script>
    import data from './model/promedios'
    import Result from './Result.svelte'

    let selectedClass;
    let races = data[0].races;
    let selectedRace;

    let hp;
    let level;

    let calculated = false;

    function modifyRaces() {
        races = selectedClass.races;
        selectedRace = races[0];
        reset();
    }

    function calcular() {
        calculated = true;
    }

    function reset() {
        calculated = false;
    }
</script>

<div class="field">
    <label class="label" for="classinput">Clase:</label>
    <div class="control">
        <!-- svelte-ignore a11y-no-onchange -->
        <div class="select" id="classinput">
            <select bind:value={selectedClass} on:change={modifyRaces}>
            {#each data as clazz}
                <option value={clazz}>
                    {clazz.class}
                </option>
                {/each}
            </select>
        </div>
    </div>
</div>

<div class="field">
    <label class="label" for="raceinput">Raza:</label>
    <div class="control">
        <!-- svelte-ignore a11y-no-onchange -->
        <div class="select" id="raceinput">
            <select bind:value={selectedRace} on:change={reset}>
            {#each races as race}
                <option value={race}>
                    {race.race}
                </option>
            {/each}
            </select>
        </div>
    </div>
</div>

<div class="field">
    <label class="label" for="hpinput">Vida:</label>
    <div class="control">
        <input type="number" bind:value={hp} min=1 max=1000 on:input={reset} class="input" id="hpinput"/>
    </div>
</div>

<div class="field">
    <label class="label" for="lvlinput">Nivel:</label>
    <div class="control">
        <input type="number" bind:value={level} min=13 max=50 on:input={reset} class="input" id="lvlinput"/>
    </div>
</div>

<div class="control">
    <button on:click={calcular} disabled={hp === undefined || level === undefined} class="button">Calcular!</button>
</div>
{#if calculated}
<Result hp={hp} clazz={selectedClass.class} race={selectedRace} lvl={level}/>    
{/if}