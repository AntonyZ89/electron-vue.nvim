import React, { useState, useMemo } from 'react';
import FakeComponent from './FakeComponent'
import './sample.scss';

function Sample(props) {
  const [name, setName] = useState(props.value)
  const error = useMemo(() => !name, [name])

  function onChange(event) {
    setName(event.target.value)
  }

  return (
    <div>
      <div className="text-center">{ name }</div>

      <FakeComponent prop="value">
        <FakeComponent.Item />
      </FakeComponent>

      <div>
        <input value={name} onChange={onChange} className={[{ error }, 'w-full']} type="text" />
        <span>Invalid name</span>
      </div>
    </div>
  )
}

export { Sample };
