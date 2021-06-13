clear
n = input('n=')
while n~=1
    if(rem(n,2) == 0)
        n = n / 2
    else
        n = n * 3 + 1
    end
pause
end