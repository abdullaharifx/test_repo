if [ -z "$1" ]; then
    echo "Error: Commit message is missing."
    echo "Usage: ./commit.sh \"your commit message\""
    exit 1
fi


if [ ! -d ".git" ]; then
    echo "Error: This folder is not a Git repository."
    exit 1
fi


git add .

git commit -m "$1"
if [ $? -ne 0 ]; then
    echo "Error: Commit failed."
    exit 1
fi

git push
if [ $? -ne 0 ]; then
    echo "Error: Push failed."
    exit 1
fi

echo "Success: Changes committed and pushed."

