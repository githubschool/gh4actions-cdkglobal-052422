# Maven Package Demo

Follow documentation here: <https://docs.github.com/en/packages/working-with-a-github-packages-registry/working-with-the-apache-maven-registry>

Make sure to update `YOUR_PACKAGE_ORG/YOUR PACKAGE_REPO` in `pom.xml` file. And you need to update `~/.m2/settings.xml` file to include your PAT token and to change your organization name and repo name.

## Sample .m2 file

```xml
<settings xmlns="http://maven.apache.org/SETTINGS/1.0.0"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://maven.apache.org/SETTINGS/1.0.0
                      http://maven.apache.org/xsd/settings-1.0.0.xsd">

  <activeProfiles>
    <activeProfile>github</activeProfile>
  </activeProfiles>

  <profiles>
    <profile>
      <id>github</id>
      <repositories>
       <repository>
          <id>github</id>
          <url>https://maven.pkg.github.com/YOUR_ORGANIZATION_NAME_PACKAGE/YOUR_REPO_NAME</url>
          <snapshots>
            <enabled>false</enabled>
          </snapshots>
        </repository>
      </repositories>
    </profile>
  </profiles>

  <servers>
    <server>
      <id>github</id>
      <username>YOUR_GITHUB_USER_NAME</username>
      <password>YOUR_TOKEN_WITH_PACKAGE_PERMISSION</password>
    </server>
  </servers>
</settings>
```
