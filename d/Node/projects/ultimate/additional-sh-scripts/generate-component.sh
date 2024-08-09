# Claude 3.5 Sonnet
#!/bin/bash
# generate-component.sh

project_dir="$1"
component_name="$2"
component_type="${3:-basic}"

mkdir -p "$project_dir/src/components"

case "$component_type" in
  button)
    cat << EOF > "$project_dir/src/components/$component_name.js"
import React from 'react';
import styled from 'styled-components';

const StyledButton = styled.button\`
  // Add your button styles here
\`;

const $component_name = ({ children, onClick, ...props }) => (
  <StyledButton onClick={onClick} {...props}>
    {children}
  </StyledButton>
);

export default $component_name;
EOF
    ;;
  modal)
    cat << EOF > "$project_dir/src/components/$component_name.js"
import React from 'react';
import styled from 'styled-components';

const ModalOverlay = styled.div\`
  // Add your modal overlay styles here
\`;

const ModalContent = styled.div\`
  // Add your modal content styles here
\`;

const $component_name = ({ isOpen, onClose, children }) => {
  if (!isOpen) return null;

  return (
    <ModalOverlay onClick={onClose}>
      <ModalContent onClick={e => e.stopPropagation()}>
        {children}
        <button onClick={onClose}>Close</button>
      </ModalContent>
    </ModalOverlay>
  );
};

export default $component_name;
EOF
    ;;
  *)
    cat << EOF > "$project_dir/src/components/$component_name.js"
import React from 'react';
import styled from 'styled-components';

const ${component_name}Wrapper = styled.div\`
  // Add your styles here
\`;

const $component_name = () => (
  <${component_name}Wrapper>
    {/* Add your component content here */}
  </${component_name}Wrapper>
);

export default $component_name;
EOF
    ;;
esac

echo "Component $component_name created in $project_dir/src/components"

# # Original Version
# #!/bin/bash
# # generate-component.sh
# # Usage: ./generate-component.sh <project-name> <component-name> [button|form|modal]

# project_name=$1
# component_name=$2
# component_type=${3:-basic}

# if [ -z "$project_name" ] || [ -z "$component_name" ]; then
#   echo "Usage: $0 <project-name> <component-name> [button|form|modal]"
#   exit 1
# fi

# project_dir="/d/Node/projects/$project_name/client/src/components"
# mkdir -p "$project_dir"

# case "$component_type" in
#   button)
#     cat << EOF > "$project_dir/${component_name}.js"
# import React from 'react';
# import styled from 'styled-components';

# const StyledButton = styled.button\`
#   // Add your button styles here
# \`;

# const ${component_name} = ({ children, onClick }) => {
#   return (
#     <StyledButton onClick={onClick}>
#       {children}
#     </StyledButton>
#   );
# };

# export default ${component_name};
# EOF
#     ;;
#   form)
#     cat << EOF > "$project_dir/${component_name}.js"
# import React, { useState } from 'react';

# const ${component_name} = ({ onSubmit }) => {
#   const [formData, setFormData] = useState({});

#   const handleChange = (e) => {
#     setFormData({ ...formData, [e.target.name]: e.target.value });
#   };

#   const handleSubmit = (e) => {
#     e.preventDefault();
#     onSubmit(formData);
#   };

#   return (
#     <form onSubmit={handleSubmit}>
#       {/* Add your form fields here */}
#       <button type="submit">Submit</button>
#     </form>
#   );
# };

# export default ${component_name};
# EOF
#     ;;
#   modal)
#     cat << EOF > "$project_dir/${component_name}.js"
# import React from 'react';
# import styled from 'styled-components';

# const ModalOverlay = styled.div\`
#   // Add your modal overlay styles here
# \`;

# const ModalContent = styled.div\`
#   // Add your modal content styles here
# \`;

# const ${component_name} = ({ isOpen, onClose, children }) => {
#   if (!isOpen) return null;

#   return (
#     <ModalOverlay onClick={onClose}>
#       <ModalContent onClick={(e) => e.stopPropagation()}>
#         {children}
#         <button onClick={onClose}>Close</button>
#       </ModalContent>
#     </ModalOverlay>
#   );
# };

# export default ${component_name};
# EOF
#     ;;
#   *)
#     cat << EOF > "$project_dir/${component_name}.js"
# import React from 'react';

# const ${component_name} = () => {
#   return (
#     <div>
#       {/* Add your component content here */}
#     </div>
#   );
# };

# export default ${component_name};
# EOF
#     ;;
# esac

# echo "${component_name} component created successfully in $project_dir"
