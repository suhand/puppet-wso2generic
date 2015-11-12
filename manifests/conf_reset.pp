# ----------------------------------------------------------------------------
#  Copyright 2015 WSO2, Inc. http://www.wso2.org
#
#  Licensed under the Apache License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.
# ----------------------------------------------------------------------------
#
# This will reset the puppet agent nodes puppet.conf configuration file
# If exists, the previously used certname will be removed from puppet.conf file

define wso2generic::conf_reset {
	file {  "/etc/puppet/puppet.conf":
                ensure  => file,
                content => template('wso2base/puppet.agent.clean.erb'),
        }
}
