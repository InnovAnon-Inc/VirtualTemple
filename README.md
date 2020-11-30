# Virtual Temple
Post-COVID Congregational Technologies
==========
[![CircleCI](https://img.shields.io/circleci/build/github/InnovAnon-Inc/VirtualTemple?color=%23FF1100&logo=InnovAnon%2C%20Inc.&logoColor=%23FF1133&style=plastic)](https://circleci.com/gh/InnovAnon-Inc/VirtualTemple)
[![Repo Size](https://img.shields.io/github/repo-size/InnovAnon-Inc/VirtualTemple?color=%23FF1100&logo=InnovAnon%2C%20Inc.&logoColor=%23FF1133&style=plastic)](https://github.com/InnovAnon-Inc/VirtualTemple)
![Lines of code](https://img.shields.io/tokei/lines/github/InnovAnon-Inc/VirtualTemple?color=FF1100&logo=InnovAnon-Inc&logoColor=FF1133&style=plastic)
![CodeFactor Grade](https://img.shields.io/codefactor/grade/github/InnovAnon-Inc/VirtualTemple?color=FF1100&logo=InnovAnon-Inc&logoColor=FF1133&style=plastic)

[![Latest Release](https://img.shields.io/github/commits-since/InnovAnon-Inc/VirtualTemple/latest?color=%23FF1100&include_prereleases&logo=InnovAnon%2C%20Inc.&logoColor=%23FF1133&style=plastic)](https://github.com/InnovAnon-Inc/VirtualTemple/releases/latest)
[![License Summary](https://img.shields.io/github/license/InnovAnon-Inc/VirtualTemple?color=%23FF1100&label=Free%20Code%20for%20a%20Free%20World%21&logo=InnovAnon%2C%20Inc.&logoColor=%23FF1133&style=plastic)](https://tldrlegal.com/license/unlicense#summary)

![GitHub package.json version](https://img.shields.io/github/package-json/v/InnovAnon-Inc/VirtualTemple?color=FF1100&logo=InnovAnon%2C%20Inc.&logoColor=FF1133&style=plastic)
![npm](https://img.shields.io/npm/v/virtual-temple?color=FF1100&logo=InnovAnon%2C%20Inc.&logoColor=FF1133&style=plastic)
![GitHub package.json dynamic](https://img.shields.io/github/package-json/keywords/InnovAnon-Inc/VirtualTemple?color=FF1100&logo=InnovAnon%2C%20Inc.&logoColor=FF1133&style=plastic)
![Dependent repos (via libraries.io)](https://img.shields.io/librariesio/dependent-repos/npm/virtual-temple?color=FF1100&logo=InnovAnon%2C%20Inc.&logoColor=FF1133&style=plastic)
![jsDelivr hits (npm)](https://img.shields.io/jsdelivr/npm/hy/virtual-temple?color=FF1100&logo=InnovAnon%2C%20Inc.&logoColor=FF1133&style=plastic)
![npm](https://img.shields.io/npm/dy/virtual-temple?color=FF1100&logo=InnovAnon%2C%20Inc.&logoColor=FF1133&style=plastic)
![Libraries.io dependency status for latest release](https://img.shields.io/librariesio/release/npm/virtual-temple?color=FF1100&style=plastic)
![npm collaborators](https://img.shields.io/npm/collaborators/virtual-temple?color=FF1100&logo=InnovAnon%2C%20Inc.&logoColor=FF1133&style=plastic)
![Snyk Vulnerabilities for npm package](https://img.shields.io/snyk/vulnerabilities/npm/virtual-temple?color=FF1100&logo=InnovAnon%2C%20Inc.&logoColor=FF1133&style=plastic)
![Libraries.io SourceRank](https://img.shields.io/librariesio/sourcerank/npm/virtual-temple?style=plastic)

Video conferencing server for group meditation sessions and other congregational activities.

### TODO
- use stunnel+nginx

### Usage
- runit:
    ```
    sudo mkdir    /etc/sv/virtual-temple              &&
    curl https://raw.githubusercontent.com/InnovAnon-Inc/VirtualTemple/master/run |
    sudo tee      /etc/sv/virtual-temple/run          &&
    sudo chmod +x /etc/sv/virtual-temple/run          &&
    sudo ln -s    /etc/sv/virtual-temple /var/service &&
    sudo sv enable virtual-temple                     &&
    sudo sv start  virtual-temple
    ```

### Credits
- truly forked from [here](https://github.com/shanet/WebRTC-Example)

# Innovations Anonymous
Free Code for a Free World!
==========
![Corporate Logo](https://i.imgur.com/UD8y4Is.gif)

