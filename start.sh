if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/techzsky/RRbot.git /RRbot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /RRbot
fi
cd /RRbot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
