NAME="Abdullah"
echo "Hello, my name is $NAME"

if [ -z "$1" ]; then
    echo "No argument provided"
else
    echo "First argument: $1"
fi


if [ -n "$1" ]; then
    if [ "$1" -gt 10 ]; then
        echo "Greater than 10"
    else
        echo "Less or equal to 10"
    fi
fi

echo -n "Numbers: "
for i in 1 2 3 4 5
do
    echo -n "$i "
done
echo

case "$2" in
    Red|red)
        echo "Color $2: Stop"
        ;;
    Green|green)
        echo "Color $2: Go"
        ;;
    Yellow|yellow)
        echo "Color $2: Wait"
        ;;
    *)
        if [ -n "$2" ]; then
            echo "Color $2: Unknown color"
        fi
        ;;
esac

