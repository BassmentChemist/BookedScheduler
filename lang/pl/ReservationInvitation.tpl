	Szczegóły rezerwacji:
	<br/>
	<br/>

	Początek: {formatdate date=$StartDate key=reservation_email}<br/>
	Koniec: {formatdate date=$EndDate key=reservation_email}<br/>
	{if $ResourceNames|count > 1}
		Zasoby:<br/>
		{foreach from=$ResourceNames item=resourceName}
			{$resourceName}<br/>
		{/foreach}
		{else}
		Zasób: {$ResourceName}<br/>
	{/if}

	{if $ResourceImage}
		<div class="resource-image"><img src="{$ScriptUrl}/{$ResourceImage}"/></div>
	{/if}

	Tytuł: {$Title}<br/>
	Opis: {$Description|nl2br}<br/>

	{if count($RepeatDates) gt 0}
		<br/>
		Rezerwacja nastąpi w następujących terminach:
		<br/>
	{/if}

	{foreach from=$RepeatDates item=date name=dates}
		{formatdate date=$date}<br/>
	{/foreach}

	{if $Accessories|count > 0}
		<br/>Akcesoria:<br/>
		{foreach from=$Accessories item=accessory}
			({$accessory->QuantityReserved}) {$accessory->Name}<br/>
		{/foreach}
	{/if}

	{if $RequiresApproval}
		<br/>
		Co najmniej jeden z zasobów wymaga zatwierdzenia. Ta rezerwacja będzie oczekiwała na zatwierdzenie.
	{/if}

	<br/>
	Bierzesz udział? <a href="{$ScriptUrl}/{$AcceptUrl}">Tak</a> <a href="{$ScriptUrl}/{$DeclineUrl}">Nie</a>
	<br/>

	<a href="{$ScriptUrl}/{$ReservationUrl}">Podgląd rezerwacji</a> |
	<a href="{$ScriptUrl}/{$ICalUrl}">Dodaj do Outlook'a</a> |
	<a href="{$ScriptUrl}">Zaloguj się do Booked Scheduler</a>

