if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/4kcinemas/SS_Linkz_Main /EvaMaria
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /4Kcinemas
fi
cd /EvaMaria
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
