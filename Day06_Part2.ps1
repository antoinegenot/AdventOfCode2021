# https://adventofcode.com/2021/day/6

# $fishes = @(3, 4, 3, 1, 2)

$fishes = @(2, 1, 1, 1, 1, 1, 1, 5, 1, 1, 1, 1, 5, 1, 1, 3, 5, 1, 1, 3, 1, 1, 3, 1, 4, 4, 4, 5, 1, 1, 1, 3, 1, 3, 1, 1, 2, 2, 1, 1, 1, 5, 1, 1, 1, 5, 2, 5, 1, 1, 2, 1, 3, 3, 5, 1, 1, 4, 1, 1, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 4, 1, 5, 1, 2, 1, 1, 1, 1, 5, 1, 1, 1, 1, 1, 5, 1, 1, 1, 4, 5, 1, 1, 3, 4, 1, 1, 1, 3, 5, 1, 1, 1, 2, 1, 1, 4, 1, 4, 1, 2, 1, 1, 2, 1, 5, 1, 1, 1, 5, 1, 2, 2, 1, 1, 1, 5, 1, 2, 3, 1, 1, 1, 5, 3, 2, 1, 1, 3, 1, 1, 3, 1, 3, 1, 1, 1, 5, 1, 1, 1, 1, 1, 1, 1, 3, 1, 1, 1, 1, 3, 1, 1, 4, 1, 1, 3, 2, 1, 2, 1, 1, 2, 2, 1, 2, 1, 1, 1, 4, 1, 2, 4, 1, 1, 4, 4, 1, 1, 1, 1, 1, 4, 1, 1, 1, 2, 1, 1, 2, 1, 5, 1, 1, 1, 1, 1, 5, 1, 3, 1, 1, 2, 3, 4, 4, 1, 1, 1, 3, 2, 4, 4, 1, 1, 3, 5, 1, 1, 1, 1, 4, 1, 1, 1, 1, 1, 5, 3, 1, 5, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 5, 1, 1, 1, 1, 1, 1, 1, 1, 5, 1, 4, 4, 1, 1, 1, 1, 1, 1, 1, 1, 3, 1, 3, 1, 4, 1, 1, 2, 2, 2, 1, 1, 2, 1, 1)
$fish0Day = 0
$fish1Day = $fishes | group | where Name -eq 1 | % { $_.Count }
$fish2Day = $fishes | group | where Name -eq 2 | % { $_.Count }
$fish3Day = $fishes | group | where Name -eq 3 | % { $_.Count }
$fish4Day = $fishes | group | where Name -eq 4 | % { $_.Count }
$fish5Day = $fishes | group | where Name -eq 5 | % { $_.Count }
$fish6Day = $fishes | group | where Name -eq 6 | % { $_.Count }
$fish7Day = 0
$fish8Day = 0

$numberOfDays = 256

for ($d = 1; $d -le $numberOfDays; $d++) {
    $totalFishOfDay = $fish0Day + $fish1Day + $fish2Day + $fish3Day + $fish4Day + $fish5Day + $fish6Day + $fish7Day + $fish8Day
    "Day: $($d-1) => number of fish: $totalFishOfDay"
    $babies = $fish0Day
    $fish0Day = $fish1Day
    $fish1Day = $fish2Day
    $fish2Day = $fish3Day
    $fish3Day = $fish4Day
    $fish4Day = $fish5Day
    $fish5Day = $fish6Day
    $fish6Day = $fish7Day + $babies
    $fish7Day = $fish8Day
    $fish8Day = $babies
}

'Few days later...'

'Nomber of fish after {0} days => {1}' -f $numberOfDays, ($fish0Day + $fish1Day + $fish2Day + $fish3Day + $fish4Day + $fish5Day + $fish6Day + $fish7Day + $fish8Day)