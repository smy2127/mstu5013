<chancellor-select>
  <!-- HTML -->
	<div class="player-row d-flex justify-content-between" each={ player, i in candidates }>
	<!-- players are all the ones participating and candidates are the ones that can be elected -->
    <span>{ player.name }</span>
		<button hide={ player.termLimited } class="btn btn-sm btn-secondary" onclick={ selectChancellor }>Select</button>
		<span show={player.termLimited }><em>Term Limited</em></span>
	</div>

  <script>
    // JAVASCRIPT
    let tag = this;

		this.players = opts.players;
		this.candidates = getCandidates(this.players);

		selectChancellor(event) {
			let selectedPlayer = event.item.player;
					selectedPlayer.nominated = true;
			observer.trigger('chancellor:nominated', selectedPlayer);
		}

		function getCandidates(players) {
			return players.filter(player => !player.nominated); // this is a filter (!.player.nominated <return only players that can be nominated) that only brings back things that are true) that pulls out players who cannot be elected due to other considerations
			//return players.filted (function(player) {
			//return !player.nominated;
			//{);}
		})
		}

  </script>

  <style>
    /* CSS */
    :scope {}
		.player-row:not(last-of-type) {
			margin-bottom: 1em;
		}
  </style>
</chancellor-select>
