# Claude 3.5 Sonnet
#!/bin/bash
# generate-view.sh

project_dir="$1"
view_name="$2"
component_type="${3:-functional}"

mkdir -p "$project_dir/src/views"

if [ "$component_type" = "functional" ]; then
  cat << EOF > "$project_dir/src/views/$view_name.js"
import React from 'react';
import styled from 'styled-components';

const ${view_name}Wrapper = styled.div\`
  // Add your styles here
\`;

const $view_name = () => {
  return (
    <${view_name}Wrapper>
      <h1>$view_name</h1>
      {/* Add your view content here */}
    </${view_name}Wrapper>
  );
};

export default $view_name;
EOF
else
  cat << EOF > "$project_dir/src/views/$view_name.js"
import React, { Component } from 'react';
import styled from 'styled-components';

const ${view_name}Wrapper = styled.div\`
  // Add your styles here
\`;

class $view_name extends Component {
  render() {
    return (
      <${view_name}Wrapper>
        <h1>$view_name</h1>
        {/* Add your view content here */}
      </${view_name}Wrapper>
    );
  }
}

export default $view_name;
EOF
fi

echo "View $view_name created in $project_dir/src/views"


# #!/bin/bash
# # generate-view.sh
# # Usage: ./generate-view.sh <project-name> <view-name> [functional|class]

# project_name=$1
# view_name=$2
# component_type=${3:-functional}

# if [ -z "$project_name" ] || [ -z "$view_name" ]; then
#   echo "Usage: $0 <project-name> <view-name> [functional|class]"
#   exit 1
# fi

# project_dir="/d/Node/projects/$project_name/client/src/views"
# mkdir -p "$project_dir"

# if [ "$component_type" == "functional" ]; then
#   cat << EOF > "$project_dir/${view_name}.js"
# import React from 'react';

# const ${view_name} = () => {
#   return (
#     <div>
#       <h1>${view_name}</h1>
#       {/* Add your component logic here */}
#     </div>
#   );
# };

# export default ${view_name};
# EOF
# else
#   cat << EOF > "$project_dir/${view_name}.js"
# import React, { Component } from 'react';

# class ${view_name} extends Component {
#   render() {
#     return (
#       <div>
#         <h1>${view_name}</h1>
#         {/* Add your component logic here */}
#       </div>
#     );
#   }
# }

# export default ${view_name};
# EOF
# fi

# echo "${view_name} view created successfully in $project_dir"
