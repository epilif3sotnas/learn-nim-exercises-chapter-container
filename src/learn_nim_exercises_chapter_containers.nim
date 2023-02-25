proc exercise_1*() =
  var values = @[10,20,30,40,50,60,70,80,90,100]

  for i, value in values:
    if value mod 20 == 0:
      echo("Odd value: " & $value)
      continue

    values[i] = 5 * value

  echo("Modified array: " & $values)

proc main() =
  # Exercise 1
  exercise_1()

when is_main_module:
  main()