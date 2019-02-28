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
`git submodule update --remote`

> Develop branch contains Client and Server Repositories that are independent repos. `pwa-server` && `pwa-client`
> So running the above commands connects the submodules and updated their respective repos with the develop branch. `.gitmodules` defines and points to the develop branches.
> It is important each branch including this parent repo follow the same GitFlow approach to stay in sync.
> To make changes in either of the submodules. Go to the respective directory. Example client.

`cd pwa-client`

> notice the current branch will be `detached` look something similar to `detached:remotes/origin/develop`
> before creating your own branch off develop, you'll want to make sure green light that detached head is off develop origin and that it is current and matching (remote vs local)
> Now we create own branch off origin/develop. make changes and are ready to push, create PR for submodule. You'll notice if you are all commited and pushed clean within the submodule, this one being client. That when you go to the parent repo, it will show you are out of sync. That is because from parent repo, the submodule, `pwa-client` at this point, is different from remote/origin vs local/origin. `git submodule update` from the parent repo still should sync you back with submodules to detached develop head.
> Important: each time submodule has a PR update into develop. Parent repo should very shortly after commit updated heads.

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
