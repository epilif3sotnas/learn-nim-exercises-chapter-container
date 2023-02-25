proc exercise_1*() =
  var values = @[10,20,30,40,50,60,70,80,90,100]

  for i, value in values:
    if value mod 20 == 0:
      echo("Odd value: " & $value)
      continue

    values[i] = 5 * value

  echo("Modified array: " & $values)

proc exercise_2*(number: int32) =
  if number <= 0:
    return

  var num: int = number
  var sequence: seq[int] = @[num]
  while num != 1:
    if num mod 2 == 0:
        num = (num / 2).toInt()
        sequence.add(num)
        continue

    num = (3 * num) + 1
    sequence.add(num)

  echo "Sequence: " & $sequence

proc main() =
  # Exercise 1
  exercise_1()

  # Exercise 2
  exercise_2(1_239_801_423)

when is_main_module:
  main()