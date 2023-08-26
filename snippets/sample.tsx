import React, { useState, useMemo } from 'react';
import FakeComponent from './FakeComponent'
import './sample.scss';

interface Props {
  value: string;
}

function Sample(props: Props) {
  const [name, setName] = useState<string>(props.value)
  const error = useMemo(() => !name, [name])

  function onChange(event: React.ChangeEvent<HTMLInputElement>) {
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
