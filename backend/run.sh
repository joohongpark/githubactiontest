echo "install node modules"
npm i
if [[ ${MODE} == "dev" ]] ; then
	echo "Develop Mode"
  npm run start:dev
elif [[ ${MODE} == "prod" ]] ; then
	echo "Release Mode"
  npm run build
  npm run start:prod
else
	echo "MODE enviroment must be set to 'dev' or 'prod'"
fi