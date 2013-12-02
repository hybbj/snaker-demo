/* Copyright 2012-2013 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.snaker.modules.flow.leave.dao;

import org.snaker.framework.orm.hibernate.HibernateDao;
import org.snaker.modules.flow.leave.entity.Leave;
import org.springframework.stereotype.Component;

/**
 * 请假持久类
 * @author yuqs
 * @version 1.0
 */
@Component
public class LeaveDao extends HibernateDao<Leave, Long> {

}
