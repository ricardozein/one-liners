while inotifywait -r ~/some-folder/*; do
    rsync -avz ~/some-folder/ ~/target-folder/ --delete
done

