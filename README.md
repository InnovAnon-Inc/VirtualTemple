# Virtual Temple
Post-COVID Congregational Technologies
==========
[![CircleCI](https://img.shields.io/circleci/build/github/InnovAnon-Inc/VirtualTemple?color=%23FF1100&logo=InnovAnon%2C%20Inc.&logoColor=%23FF1133&style=plastic)](https://circleci.com/gh/InnovAnon-Inc/VirtualTemple)
[![Repo Size](https://img.shields.io/github/repo-size/InnovAnon-Inc/VirtualTemple?color=%23FF1100&logo=InnovAnon%2C%20Inc.&logoColor=%23FF1133&style=plastic)](https://github.com/InnovAnon-Inc/VirtualTemple)
![Lines of code](https://img.shields.io/tokei/lines/github/InnovAnon-Inc/VirtualTemple?color=FF1100&logo=InnovAnon-Inc&logoColor=FF1133&style=plastic)
![CodeFactor Grade](https://img.shields.io/codefactor/grade/github/InnovAnon-Inc/VirtualTemple?color=FF1100&logo=InnovAnon-Inc&logoColor=FF1133&style=plastic)

[![Latest Release](https://img.shields.io/github/commits-since/InnovAnon-Inc/VirtualTemple/latest?color=%23FF1100&include_prereleases&logo=InnovAnon%2C%20Inc.&logoColor=%23FF1133&style=plastic)](https://github.com/InnovAnon-Inc/VirtualTemple/releases/latest)
![Libraries.io dependency status for GitHub repo](https://img.shields.io/librariesio/github/InnovAnon-Inc/VirtualTemple?color=FF1100&logoColor=FF1133&style=plastic)
[![License Summary](https://img.shields.io/github/license/InnovAnon-Inc/VirtualTemple?color=%23FF1100&label=Free%20Code%20for%20a%20Free%20World%21&logo=InnovAnon%2C%20Inc.&logoColor=%23FF1133&style=plastic)](https://tldrlegal.com/license/unlicense#summary)

Video conferencing server for group meditation sessions and other congregational activities.

### TODO
- use stunnel+nginx

### Usage
- runit:
    ```
    sudo mkdir         /etc/sv/virtual-temple        &&
    curl https://raw.githubusercontent.com/InnovAnon-Inc/VirtualTemple/master/run |
    sudo tee      /etc/sv/virtual-temple/run         &&
    sudo chmod +x /etc/sv/virtual-temple/run         &&
    sudo ln -s {/etc/sv,/var/service}/virtual-temple &&
    sudo sv enable virtual-temple                    &&
    sudo sv start  virtual-temple
    ```

### Credits
- truly forked from [here](https://github.com/shanet/WebRTC-Example)

# Innovations Anonymous
Free Code for a Free World!
==========
![Corporate Logo](https://i.imgur.com/UD8y4Is.gif)

