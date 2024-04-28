# if status is-interactive
#     # Commands to run in interactive sessions can go here
# end
#
function fish_prompt
  if test $PWD = $HOME
    echo -n '~>'
  else
    echo -n $PWD '>'
  end
end


