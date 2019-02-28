### Clone Project Locally
```ssh
git clone git@github.com:nomasgrim/pwa-seed.git
```
### Fetch and Checkout Develop Brancbh
```ssh
git fetch; git checkout develop;
```

### Initial gitsubmodules
`git submodule init`
and then update
`git submodule update`

> Develop branch contains Client and Server Repositories that are independent repos. `pwa-server` && `pwa-client`
> So running the above commands connects the submodules and updated their respective repos with the develop branch. `.gitmodules` defines and points to the develop branches.
> It is important each branch including this parent repo follow the same GitFlow approach to stay in sync.
> To make changes in either of the submodules. Go to the respective directory. Example client.

`cd pwa-client`

notice the current branch will be `detached` look something similar to 


### Move into root directory
```ssh
cd pwa-seed
```

### Create .env
```ssh
cp pwa-server/.env.example pwa-server/.env
```

### Install Dependencies
```ssh
yarn
```

### Run Dev
```ssh
yarn run dev
```

### Hope for the best
