# backend services
Admin=false
data_layer=false
project_microservice=false
timings_microservice=false
workflow_service=false
processor=false
scheduler=false
employee_onboarding=false
notification_microservice=false
skill_mapping=false
frontend_web=true

# TAG=qa-$(date +'%y_%m_%d-%H_%M_%S')
# TAG=qa-$(date +'%y_%m_%d')
TAG=prod_24_may_2024

#/opt/external-softwares/beesheetsdev/

new_commons_version="0.0.43"
xml_file="pom.xml"

# branches
backend_branch=qa
frontend_branch=sprint-2.3

# Publish to Git
git_clone=false
git_branch=false
git_pull=false
pom_update=false
push_pom_update=false

# builds and images
mvn_build=true
docker_image=true
git_publish=true

save_tag=true

# BackEnd Build
# Admin Microservice
if [ "$Admin" == true ]; then
    echo -------------------------------------------------------------------------------------
    [ "$git_clone" == true ] && git clone git@git.beehyv.com:beehyv/beesheets-v2/Admin.git
    echo "Entry into folder Admin"
    cd Admin
    echo "$(git branch)"
    [ "$git_branch" == true ] && git checkout "$backend_branch"
    [ "$git_pull" == true ] && git pull
    [ "$pom_update" == true ] && xmlstarlet edit --inplace -N xmlns="http://maven.apache.org/POM/4.0.0" \
  --update "//xmlns:dependency[xmlns:groupId='com.beehyv.beesheets' and xmlns:artifactId='commons']/xmlns:version" -v "$new_commons_version" "$xml_file"
    [ "$push_pom_update" == true ] && git push
    [ "$mvn_build" == true ] && ./mvnw clean install -DskipTests
    [ "$docker_image" == true ] && sudo docker build -t registry.beehyv.com/beehyv/beesheets-v2/admin:$TAG .
    [ "$git_publish" == true ] && sudo docker push registry.beehyv.com/beehyv/beesheets-v2/admin:$TAG
    echo "Exiting folder Admin"
    cd ..
fi

if [ "$data_layer" == true ]; then
    echo -------------------------------------------------------------------------------------
    [ "$git_clone" == true ] && git clone git@git.beehyv.com:beehyv/beesheets-v2/data-layer.git
    echo "Entry into folder data-layer"
    cd data-layer
    echo "$(git branch)"
    [ "$git_branch" == true ] && git checkout "$backend_branch"
    [ "$git_pull" == true ] && git pull
    [ "$pom_update" == true ] && xmlstarlet edit --inplace -N xmlns="http://maven.apache.org/POM/4.0.0" \
  --update "//xmlns:dependency[xmlns:groupId='com.beehyv.beesheets' and xmlns:artifactId='commons']/xmlns:version" -v "$new_commons_version" "$xml_file"
    [ "$push_pom_update" == true ] && git push
    [ "$mvn_build" == true ] && ./mvnw clean install -DskipTests
    [ "$docker_image" == true ] && sudo docker build -t registry.beehyv.com/beehyv/beesheets-v2/data-layer:$TAG .
    [ "$git_publish" == true ] && sudo docker push registry.beehyv.com/beehyv/beesheets-v2/data-layer:$TAG
    echo "Exiting folder data-layer"
    cd ..
fi

if [ "$employee_onboarding" == true ]; then
    echo -------------------------------------------------------------------------------------
    [ "$git_clone" == true ] && git clone git@git.beehyv.com:beehyv/beesheets-v2/employee-onboarding.git
    echo "Entry into folder employee-onboarding"
    cd employee-onboarding
    echo "$(git branch)"
    [ "$git_branch" == true ] && git checkout "$backend_branch"
    [ "$git_pull" == true ] && git pull
    [ "$pom_update" == true ] && xmlstarlet edit --inplace -N xmlns="http://maven.apache.org/POM/4.0.0" \
  --update "//xmlns:dependency[xmlns:groupId='com.beehyv.beesheets' and xmlns:artifactId='commons']/xmlns:version" -v "$new_commons_version" "$xml_file"
    [ "$push_pom_update" == true ] && git push
    [ "$mvn_build" == true ] && ./mvnw clean install -DskipTests
    [ "$docker_image" == true ] && sudo docker build -t registry.beehyv.com/beehyv/beesheets-v2/employee-onboarding:$TAG .
    [ "$git_publish" == true ] && sudo docker push registry.beehyv.com/beehyv/beesheets-v2/employee-onboarding:$TAG
    echo "Exiting folder employee-onboarding"
    cd ..
fi

if [ "$notification_microservice" == true ]; then
    echo -------------------------------------------------------------------------------------
    [ "$git_clone" == true ] && git clone git@git.beehyv.com:beehyv/beesheets-v2/notification-microservice.git
    echo "Entry into folder notification-microservice"
    cd notification-microservice
    echo "$(git branch)"
    [ "$git_branch" == true ] && git checkout "$backend_branch"
    [ "$git_pull" == true ] && git pull
    [ "$pom_update" == true ] && xmlstarlet edit --inplace -N xmlns="http://maven.apache.org/POM/4.0.0" \
  --update "//xmlns:dependency[xmlns:groupId='com.beehyv.beesheets' and xmlns:artifactId='commons']/xmlns:version" -v "$new_commons_version" "$xml_file"
    [ "$push_pom_update" == true ] && git push
    [ "$mvn_build" == true ] && ./mvnw clean install -DskipTests
    [ "$docker_image" == true ] && sudo docker build -t registry.beehyv.com/beehyv/beesheets-v2/notification-microservice:$TAG .
    [ "$git_publish" == true ] && sudo docker push registry.beehyv.com/beehyv/beesheets-v2/notification-microservice:$TAG
    echo "Exiting folder notification-microservice"
    cd ..
fi

if [ "$processor" == true ]; then
    echo -------------------------------------------------------------------------------------
    [ "$git_clone" == true ] && git clone git@git.beehyv.com:beehyv/beesheets-v2/processor.git
    echo "Entry into folder processor"
    cd processor
    echo "$(git branch)"
    [ "$git_branch" == true ] && git checkout "$backend_branch"
    [ "$git_pull" == true ] && git pull
    [ "$pom_update" == true ] && xmlstarlet edit --inplace -N xmlns="http://maven.apache.org/POM/4.0.0" \
  --update "//xmlns:dependency[xmlns:groupId='com.beehyv.beesheets' and xmlns:artifactId='commons']/xmlns:version" -v "$new_commons_version" "$xml_file"
    [ "$push_pom_update" == true ] && git push
    [ "$mvn_build" == true ] && ./mvnw clean install -DskipTests
    [ "$docker_image" == true ] && sudo docker build -t registry.beehyv.com/beehyv/beesheets-v2/processor:$TAG .
    [ "$git_publish" == true ] && sudo docker push registry.beehyv.com/beehyv/beesheets-v2/processor:$TAG
    echo "Exiting folder processor"
    cd ..
fi

if [ "$project_microservice" == true ]; then
    echo -------------------------------------------------------------------------------------
    [ "$git_clone" == true ] && git clone git@git.beehyv.com:beehyv/beesheets-v2/project-microservice.git
    echo "Entry into folder project-microservice"
    cd project-microservice
    echo "$(git branch)"
    [ "$git_branch" == true ] && git checkout "$backend_branch"
    [ "$git_pull" == true ] && git pull
    [ "$pom_update" == true ] && xmlstarlet edit --inplace -N xmlns="http://maven.apache.org/POM/4.0.0" \
  --update "//xmlns:dependency[xmlns:groupId='com.beehyv.beesheets' and xmlns:artifactId='commons']/xmlns:version" -v "$new_commons_version" "$xml_file"
    [ "$push_pom_update" == true ] && git push
    [ "$mvn_build" == true ] && ./mvnw clean install -DskipTests
    [ "$docker_image" == true ] && sudo docker build -t registry.beehyv.com/beehyv/beesheets-v2/project-microservice:$TAG .
    [ "$git_publish" == true ] && sudo docker push registry.beehyv.com/beehyv/beesheets-v2/project-microservice:$TAG
    echo "Exiting folder project-microservice"
    cd ..
fi

if [ "$scheduler" == true ]; then
    echo -------------------------------------------------------------------------------------
    [ "$git_clone" == true ] && git clone git@git.beehyv.com:beehyv/beesheets-v2/scheduler.git
    echo "Entry into folder scheduler"
    cd scheduler
    echo "$(git branch)"
    [ "$git_branch" == true ] && git checkout "$backend_branch"
    [ "$git_pull" == true ] && git pull
    [ "$pom_update" == true ] && xmlstarlet edit --inplace -N xmlns="http://maven.apache.org/POM/4.0.0" \
  --update "//xmlns:dependency[xmlns:groupId='com.beehyv.beesheets' and xmlns:artifactId='commons']/xmlns:version" -v "$new_commons_version" "$xml_file"
    [ "$push_pom_update" == true ] && git push
    [ "$mvn_build" == true ] && ./mvnw clean install -DskipTests
    [ "$docker_image" == true ] && sudo docker build -t registry.beehyv.com/beehyv/beesheets-v2/scheduler:$TAG .
    [ "$git_publish" == true ] && sudo docker push registry.beehyv.com/beehyv/beesheets-v2/scheduler:$TAG
    echo "Exiting folder scheduler"
    cd ..
fi

if [ "$timings_microservice" == true ]; then
    echo -------------------------------------------------------------------------------------
    [ "$git_clone" == true ] && git clone git@git.beehyv.com:beehyv/beesheets-v2/timings-microservice.git
    echo "Entry into folder timings-microservice"
    cd timings-microservice
    echo "$(git branch)"
    [ "$git_branch" == true ] && git checkout "$backend_branch"
    [ "$git_pull" == true ] && git pull
    [ "$pom_update" == true ] && xmlstarlet edit --inplace -N xmlns="http://maven.apache.org/POM/4.0.0" \
  --update "//xmlns:dependency[xmlns:groupId='com.beehyv.beesheets' and xmlns:artifactId='commons']/xmlns:version" -v "$new_commons_version" "$xml_file"
    [ "$push_pom_update" == true ] && git push
    [ "$mvn_build" == true ] && ./mvnw clean install -DskipTests
    [ "$docker_image" == true ] && sudo docker build -t registry.beehyv.com/beehyv/beesheets-v2/timings-microservice:$TAG .
    [ "$git_publish" == true ] && sudo docker push registry.beehyv.com/beehyv/beesheets-v2/timings-microservice:$TAG
    echo "Exiting folder timings-microservice"
    cd ..
fi

if [ "$workflow_service" == true ]; then
    echo -------------------------------------------------------------------------------------
    [ "$git_clone" == true ] && git clone git@git.beehyv.com:beehyv/beesheets-v2/workflow-service.git
    echo "Entry into folder workflow-service"
    cd workflow-service
    echo "$(git branch)"
    [ "$git_branch" == true ] && git checkout "$backend_branch"
    [ "$git_pull" == true ] && git pull
    [ "$pom_update" == true ] && xmlstarlet edit --inplace -N xmlns="http://maven.apache.org/POM/4.0.0" \
  --update "//xmlns:dependency[xmlns:groupId='com.beehyv.beesheets' and xmlns:artifactId='commons']/xmlns:version" -v "$new_commons_version" "$xml_file"
    [ "$push_pom_update" == true ] && git push
    [ "$mvn_build" == true ] && ./mvnw clean install -DskipTests
    [ "$docker_image" == true ] && sudo docker build -t registry.beehyv.com/beehyv/beesheets-v2/workflow-service:$TAG .
    [ "$git_publish" == true ] && sudo docker push registry.beehyv.com/beehyv/beesheets-v2/workflow-service:$TAG
    echo "Exiting folder workflow-service"
    cd ..
fi

if [ "$skill_mapping" == true ]; then
    echo -------------------------------------------------------------------------------------
    [ "$git_clone" == true ] && git clone git@git.beehyv.com:beehyv/beesheets-v2/skill-mapping.git
    echo "Entry into folder skill-mapping"
    cd skill-mapping
    echo "$(git branch)"
    [ "$git_branch" == true ] && git checkout "$backend_branch"
    [ "$git_pull" == true ] && git pull
    [ "$pom_update" == true ] && xmlstarlet edit --inplace -N xmlns="http://maven.apache.org/POM/4.0.0" \
  --update "//xmlns:dependency[xmlns:groupId='com.beehyv.beesheets' and xmlns:artifactId='commons']/xmlns:version" -v "$new_commons_version" "$xml_file"
    [ "$push_pom_update" == true ] && git push
    [ "$mvn_build" == true ] && ./mvnw clean install -DskipTests
    [ "$docker_image" == true ] && sudo docker build -t registry.beehyv.com/beehyv/beesheets-v2/skill-mapping:$TAG .
    [ "$git_publish" == true ] && sudo docker push registry.beehyv.com/beehyv/beesheets-v2/skill-mapping:$TAG
    echo "Exiting folder skill-mapping"
    cd ..
fi

# FrontEnd Build
if [ "$frontend_web" == true ]; then
    echo -------------------------------------------------------------------------------------
    [ "$git_clone" == true ] && git clone git@git.beehyv.com:beehyv/beesheets-v2/frontend-web.git
    echo "Entry into folder frontend-web"
    cd frontend-web
    echo "$(git branch)"
    [ "$git_branch" == true ] && git checkout "$frontend_branch"
    [ "$git_pull" == true ] && git pull
    [ "$docker_image" == true ] && sudo docker build -t registry.beehyv.com/beehyv/beesheets-v2/frontend-web:$TAG .
    [ "$git_publish" == true ] && sudo docker push registry.beehyv.com/beehyv/beesheets-v2/frontend-web:$TAG
    echo "Exiting folder frontend-web"
    cd ..
fi

[ "$save_tag" == true ] && {echo $TAG &> tag.txt}





# sshfs -p1027 venkatramireddy@192.168.5.10:/opt/external-softwares/beesheetsdev /home/beehyv/Documents/deployment_5.10/
